#lang racket

(provide (all-defined-out))

(require "L2-common.rkt")

(define spill (lambda (func var temp)
                (define name (first func))

(define arg (second func))

(define stack (third func))

(define insts (rest (rest (rest func))))

(define ops '(+= -= *= &= <<= >>=))

(define cmp '(< <= =))

(define isops? (lambda (x) (member x ops)))

(define count 0)

(define spillvar (lambda (n) (string->symbol (string-append (symbol->string temp) (number->string n)))))

(define (combine l c)
  (cond
    [(empty? l) (list '() c)]
    [else
     (define result (spill (first l) c))
     (define next (combine (rest l) (second result)))
     (list (append (first result) (first next)) (second next))])
  )

(define (pushstack x)
  (list (list 'mem 'rsp (* 8 (+ count stack))) '<- x))

(define (popstack x)
  (list x '<- (list 'mem 'rsp (* 8 (+ count stack)))))

(define (convcmp c)
  (cond
    [(equal? c '<) <]
    [(equal? c '<=) <=]
    [(equal? c '=) =]))

(define subspill (lambda (x v)
                   (if (equal? x var) v x)))

(define spill (lambda (i c)
                (define z (spillvar c))
                (define default (list (list i) c))
                (match i
                  [(list a '<- b cmp d)
                   (cond
                     [(and (equal? a var) (or (equal? b var) (equal? d var)))
                      (list
                       (list (popstack z)
                             (list z '<- (subspill b z) cmp (subspill d z))
                             (pushstack z))
                       (+ c 1))
                       ]
                     [(equal? a var)
                      (list
                       (list (list z '<- b cmp d)
                             (pushstack z))
                       (+ c 1))
                      ]
                     [(or (equal? b var) (equal? d var))
                      (list
                       (list (popstack z)
                            (list a '<- (subspill b z) cmp (subspill d z)))
                       (+ c 1))
                       ]
                     [else default])
                   ]
                  [(list a '<- (list 'stack-arg n))
                   (cond
                     [(equal? a var)
                      (list
                       (list
                        (list z '<- (list 'stack-arg n))
                        (pushstack z))
                       (+ c 1))]
                     [else default])
                   ]
                  [(list a '<- (list 'mem 'rsp n))
                   (cond
                     [(equal? a var) (list (list (list z '<- (list 'mem 'rsp n)) (pushstack z)) (+ c 1))]
                     [else default])
                   ]
                  [(list a '<- (list 'mem b n))
                   (cond
                     [(and (equal? a var) (equal? a b))
                      (list
                       (list
                        (popstack z)
                        (list z '<- (list 'mem z n))
                        (pushstack z))
                       (+ c 1))
                      ]
                     [(equal? a var) (list (list
                                            (list z '<- (list 'mem b n))
                                            (pushstack z))
                                             (+ c 1))]
                     [(equal? b var)
                      (list
                       (list
                        (popstack z)
                        (list a '<- (list 'mem z n)))
                       (+ c 1))]
                     [else default])
                   ]
                  [(list (list 'mem 'rsp n) '<- a)
                   (cond
                     [(equal? a var)
                      (list (list
                             (popstack z)
                             (list (list 'mem 'rsp n) '<- z))
                            (+ c 1))]
                     [else default])
                   ]
                  [(list (list 'mem b n) '<- a)
                   (cond
                     [(and (equal? a var) (equal? a b))
                      (list
                       (list
                        (popstack z)
                        (list (list 'mem z n) '<- z))
                       (+ c 1))
                      ]
                     [(equal? a var) (list (list
                             (popstack z)
                             (list (list 'mem b n) '<- z))
                            (+ c 1))]
                     [(equal? b var)
                      (list
                       (list
                        (popstack z)
                        (list (list 'mem z n) '<- a))
                       (+ c 1))]
                     [else default])
                     ]
                  [(list a '<- b)
                   (cond
                     [(and (equal? a var) (equal? a b)) (list '() c)]
                     [(equal? a var) (list (list (pushstack b)) c)]
                     [(equal? b var) (list (list (popstack a)) c)]
                     [else default])
                   ]
                  [(list a (? isops? o) b)
                   (cond
                     [(equal? a var) (list (list (popstack z) (list z o (subspill b z)) (pushstack z)) (+ c 1))]
                     [(equal? b var) (list (list (popstack z) (list a o z)) (+ c 1))]
                     [else default])
                   ]
                  [(list 'call label n)
                   (cond
                     [(equal? label var) (list (list (popstack z) (list 'call z n)) (+ c 1))]
                     [else default])
                   ]
                  [(list 'cjump a cmp b l1 l2)
                   (cond
                     [(or (equal? a var) (equal? b var) (equal? l1 var) (equal? l2 var))
                      (list (list
                             (popstack z)
                             (list 'cjump (subspill a z) cmp (subspill b z) (subspill l1 z) (subspill l2 z)))
                            (+ c 1))]
                     [else default])
                   ]
                  [(list 'goto (? (lambda (x) (equal? x var)) a))
                   (list
                    (list (popstack z)
                          (list 'goto z a))
                    (+ c 1))
                   ]
                  [(list 'tail-call (? (lambda (x) (equal? x var)) a) nat)
                   (list
                    (list (popstack z)
                          (list 'tail-call z nat))
                    (+ c 1))
                   ]
                  [_ default]
                   )
                ))

(define (buildparamlist x inst)
  (make-list (length inst) x))

(define spillresult (combine insts 0))

(define graphs (first spillresult))

(define sc (second spillresult))

(append (list name arg (+ 1 stack)) graphs)
))
