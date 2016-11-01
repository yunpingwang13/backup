#lang racket

(provide (all-defined-out))

(define volatile '(rax rcx rdx r8 r9 r10 r11 rdi rsi))

(define asn '(+= -= *= &= <<= >>= < <= =))

(define ops (cons '<- asn))

(define keywords '(print allocate array-error read))

(define gen-newsym (lambda (l)
(define newsym (gensym))
(cond
[(member newsym l) (gen-newsym l)]
[else newsym])))

(define var? (lambda (x)
               (cond
                 [(not (reg-var? x)) #f]
                 [(member x reglist) #f]
                 [else #t])))

(define reg-var? (lambda (x)
                   (cond
                     [(not (symbol? x)) #f]
                     [(number? x) #f]
                     [(symbol=? x 'rsp) #f]
                     [(string=? (substring (symbol->string x) 0 1) ":") #f]
                     [else #t])))

(define isops? (lambda (x) (member x ops)))

(define isasn? (lambda (x) (member x asn)))

(define sym<? (lambda (x y)
  (string<? (symbol->string x) (symbol->string y))))

(define notnum? (lambda (x) (not (number? x))))

(define callee '(r12 r13 r14 r15 rax rbp rbx))

(define tailcallee '(r12 r13 r14 r15 rbp rbx))

(define reglist '(r10 r11 r12 r13 r14 r15 r8 r9 rax rbp rbx rcx rdi rdx rsi))

(define notrspvar? (lambda (x)
                     (and (symbol? x) (and (not (islabel? x)) (not (symbol=? x 'rsp))))))

(define islabel? (lambda (x)
                  (and (symbol? x) (startswithcolon? x))))

(define startswithcolon? (lambda (x) (string=? (substring (symbol->string x) 0 1) ":")))
