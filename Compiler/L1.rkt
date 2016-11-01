#lang racket

(provide (all-defined-out))

(define L1->asm
(lambda (prog)

(define main (first prog))
(define funcs (rest prog))

(define sxreg '(rcx))
(define areg (append '(rdi rsi rdx r8 r9) sxreg))
(define wreg (append '(rax rbx rbp r10 r11 r12 r13 r14 r15) areg))
(define xreg (append '(rsp) wreg))

(define 8reg '(rsp al bl bpl r10b r11b r12b r13b r14b r15b dil sil dl r8b r9b cl))

(define convlabel (lambda (x) (string-append "_" (substring (symbol->string x) 1 (string-length (symbol->string x))))))

(define convmov (lambda (x)
                  (cond
                    [(number? x)
                     (string-append "$" (number->string x))]
                    [(string=? ":" (substring (symbol->string x) 0 1))
                     (string-append "$" (convlabel x))]
                    [(list? (member x xreg))
                     (string-append "%" (symbol->string x))]
                    [(list? (member x 8reg))
                     (string-append "%" (symbol->string x))]
                    [else x]
                    )))

(define conv8 (lambda (x)
                (cond
                  [(list? (member x wreg))
                   (list-ref 8reg (+ 1 (- (length wreg) (length (member x wreg)))))]
                  [else x])
                  ))

(define convjmp (lambda (x)
                  (cond
                    [(list? (member x xreg))
                     (string->symbol (string-append "* %" (symbol->string x)))
                     ]
                    [else
                     (convlabel x)])))

(define op (open-output-file "prog.S" #:exists 'replace))

(define df (lambda (x) (display x op)))
(define dfl (lambda (x) (displayln x op)))

(df ".text\n.globl go\ngo:\npushq %rbx\npushq %rbp\npushq %r12\npushq %r13\npushq %r14\npushq %r15\n" )
(df (string-append (string-append "call " (convlabel main)) "\n") )
(df "popq %r15\npopq %r14\npopq %r13\npopq %r12\npopq %rbp\npopq %rbx\nretq\n" )

(define (clabel i)
  (df (convlabel i))
  (dfl ":"))

(define (caop i arg stk)
  (match i
    [(list a o b)
     (df
      (match o
        ['+= "addq "]
        ['-= "subq "]
        ['*= "imulq "]
        ['&= "andq "]))
     (df (convmov b))
     (df ", ")
     (dfl (convmov a))]
    [_ '()]))

(define (creturn i arg stk)
  (cond
    [(> arg 6)
     (df "addq $")
     (df (* (+ (- arg 6) stk) 8))
     (dfl ", %rsp")]
    [(and (<= arg 6) (> stk 0))
     (df "addq $")
     (df (* stk 8))
     (dfl ", %rsp")])
    (dfl "retq")
    )

(define (ccall i arg stk)
  (match i
    [(list 'call 'print n)
     (dfl "call print")]
    [(list 'call 'read n)
     (dfl "call read")]
    [(list 'call 'allocate n)
     (dfl "call allocate")]
    [(list 'call 'array-error n)
     (dfl "call array_error")]
    [(list 'call u n)
     (df "subq $")
     (cond
       [(> n 6)
        (df (* (+ 1 (- n 6)) 8))]
       [else
        (df "8")])
     (df ", %rsp\n")
     (df "jmp ")
     (dfl (convjmp u))]
    [_ '()]))

(define (cgoto i arg stk)
  (df "jmp ")
  (dfl (convjmp (second i))))

(define (ctail i arg stk)
  (cond
    [(> arg 6)
     (df "addq $")
     (df (* (+ (- arg 6) stk) 8))
     (dfl ", %rsp")]
    [(and (<= arg 6) (> stk 0))
     (df "addq $")
     (df (* stk 8))
     (dfl ", %rsp")]
    )
  (df "jmp ")
  (dfl (convjmp (second i))))

(define convcmp (lambda (x)
                  (match x
                    ['< <]
                    ['<= <=]
                    ['= =]
                    [_ '(error)])))

(define (ccjump i arg stk)
  (match i
    [(list 'cjump (? number? t1) cmp (? number? t2) l1 l2)
     (df "jmp ")
     (dfl (if ((convcmp cmp) t1 t2) (convlabel l1) (convlabel l2)))]
    [_
     (df "cmpq ")
     (match i
       [(list 'cjump (? number? t1) cmp t2 l1 l2)
        (df (convmov t1))
        (df ", ")
        (dfl (convmov t2))
        (df (match cmp
              ['< "jg "] ['<= "jge "] ['= "je "]))
        (dfl (convlabel l1))
        (df "jmp ")
        (dfl (convlabel l2))]
       [(list 'cjump t1 cmp t2 l1 l2)
        (df (convmov t2))
        (df ", ")
        (dfl (convmov t1))
        (df (match cmp
              ['< "jl "] ['<= "jle "] ['= "je "]))
        (dfl (convlabel l1))
        (df "jmp ")
        (dfl (convlabel l2))]
       [_ '()])
     ]))

(define (ccmpmov i arg stk)
  (match i
    [(list a '<- (? number? t1) cmp (? number? t2))
     (df "movq $")
     (df (if ((convcmp cmp) t1 t2) "1" "0"))
     (df ", ")
     (dfl (convmov a))]
    [(list a '<- (? number? t1) cmp t2)
     (df "cmpq $")
     (df t1)
     (df ", ")
     (dfl (convmov t2))
     (df (match cmp
           ['<= "setge "] ['< "setg "] ['= "sete "]))
     (dfl (convmov (conv8 a)))
     (df "movzbq ")
     (df (convmov (conv8 a)))
     (df ", ")
     (dfl (convmov a))]
    [(list a '<- t1 cmp t2)
     (df "cmpq ")
     (df (convmov t2))
     (df ", ")
     (dfl (convmov t1))
     (df (match cmp
           ['<= "setle "] ['< "setl "] ['= "sete "]))
     (dfl (convmov (conv8 a)))
     (df "movzbq ")
     (df (convmov (conv8 a)))
     (df ", ")
     (dfl (convmov a))]
    [_ '()]))

(define (cmov i arg stk)
  (df "movq ")
  (match i
    [(list (list 'mem a n) '<- b)
     (df (convmov b))
     (df ", ")
     (df n)
     (df "(")
     (df (convmov a))
     (dfl ")")]
    [(list a '<- (list 'mem b n))
     (df n)
     (df "(")
     (df (convmov b))
     (df "), ")
     (dfl (convmov a))]
    [(list a '<- b)
     (df (convmov b))
     (df ", ")
     (dfl (convmov a))]
    [_ '()]))

(define (cshift i arg stk)
  (match i
    [(list a '<<= b)
     (df "salq ")
     (df (convmov (conv8 b)))
     (df ", ")
     (dfl (convmov a))]
    [(list a '>>= b)
     (df "sarq ")
     (df (convmov (conv8 b)))
     (df ", ")
     (dfl (convmov a))]
    [_ '()]))

(define isaop? (lambda (x) (member x '(+= -= *= &=))))
(define issop? (lambda (x) (member x '(<<= >>=))))
(define iscmp? (lambda (x) (member x '(< <= =))))

(define compinst (lambda (i arg stk)
                   (match i
                     ['(return) (creturn i arg stk)]
                     [(list 'call _ _) (ccall i arg stk)]
                     [(list 'tail-call _ _) (ctail i arg stk)]
                     [(list 'goto _) (cgoto i arg stk)]
                     [(list a (? isaop? o) b) (caop i arg stk)]
                     [(list 'cjump _ _ _ _ _) (ccjump i arg stk)]
                     [(list a '<- b (? iscmp? o) c) (ccmpmov i arg stk)]
                     [(list _ '<- _ ) (cmov i arg stk)]
                     [(list a (? issop? o) b) (cshift i arg stk)]
                     [_ (clabel i)])
                   ))

(define compfunc (lambda (f)
                  (df (convlabel (first f)))
                  (dfl ":")
                  (define args (second f))
                  (define stack (third f))
                  (define insts (rest (rest (rest f))))
                  (cond
                    [(not (= stack 0))
                     (df "subq $")
                     (df (* 8 stack))
                     (dfl ", %rsp" )])
                  (map compinst insts
                       (build-list (length insts) (lambda (x) args))
                       (build-list (length insts) (lambda (x) stack))
                       )
                  ))



(for-each compfunc funcs)
))
