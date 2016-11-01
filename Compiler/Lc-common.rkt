#lang racket

(provide (all-defined-out))

(define name-to-file
  (lambda (s)
    (open-input-file (cond
      [(equal? (current-command-line-arguments) '#())
       s]
      [else (command-line #:args (filename) filename)])
    )))

(define caller '(r8 r9 r10 r11 rax rcx rdx))

(define volatile '(rax rcx rdx r8 r9 r10 r11 rdi rsi))

(define gen-newsym
  (lambda (l)
    (define newsym (gensym))
    (cond
      [(member newsym l) (gen-newsym l)]
      [else newsym])))

(define arg-reg '(rdi rsi rdx rcx r8 r9))

(define symconcat (lambda (x y) (string->symbol (string-append (symbol->string x) (symbol->string y)))))

(define genlabel
  (symconcat ': (gensym)))

(define startswithcolon? (lambda (x) (string=? (substring (symbol->string x) 0 1) ":")))

(define reglist '(r10 r11 r12 r13 r14 r15 r8 r9 rax rbp rbx rcx rdi rdx rsi rsp))

(define biop '(+ - * < <= =))

(define isbiop? (lambda (x) (member x biop)))

(define op-word '(new-array new-tuple aref aset alen read print make-closure closure-proc closure-vars))

(define keywords (append reglist biop op-word))

(define symeq? (lambda (x) (lambda (y) (and (symbol? y) (symbol=? x y)))))

(define encode
  (lambda (v)
    (cond
      [(number? v) (+ (* v 2) 1)]
      [else v])))

(define symmember? (lambda (x) (lambda (y) (member y x))))

(define cmpop '(<= = <))

(define islabel? (lambda (x)
                  (and (symbol? x) (startswithcolon? x))))

(define stack-pos
  (lambda (n)
    (* (- 4 n) 8)
   ))

(define aop '(+= -= *= &=))

(define sop '(<<= >>=))

(define L2-keyword-list
  (append
   reglist
   biop
   cmpop
   '(<- mem goto cjump call print allocate array-error tail-call return stack-arg)))

(define L3-keyword-list
  (append
   L2-keyword-list
  '(let if new-array new-tuple aref aset alen read make-closure closure-proc closure-vars))
)

(define keyword-arg-list (remove 'print L3-keyword-list))



(define trim-arg
  (lambda (l n)
    (cond
      [(empty? l) '()]
      [else
    (cons
     (cond
      [(> n 5) (list 'mem 'rsp (stack-pos n))]
      [else (list-ref arg-reg n)])
     (trim-arg (rest l) (+ n 1))
     )])))
