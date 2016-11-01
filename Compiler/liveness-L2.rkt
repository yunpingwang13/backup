#lang racket

(require "L2-common.rkt")

(provide (all-defined-out))

(define liveness (lambda (func)

(define insts (rest (rest (rest func))))


(define numinsts (length insts))



(define oktoadd? (lambda (x)
                   (and (notnum? x) (and (symbol? x) (not (startswithcolon? x))))))

(define (filteredlist l) (filter oktoadd? l))

(define argreg '(rdi rsi rdx rcx r8 r9))

(define revar (reverse argreg))

(define numofar (lambda (n)
                  (if (> n 6) 0 (- 6 n))))

(define callkill '(r10 r11 r8 r9 rcx rdi rdx rsi))



(define listoflabels
  (map (lambda (i)
         (match i
           [(? islabel? a) a]
           [_ '()]
         )) insts))

(define uncorrected-initiallist
  (map (lambda (i l)
         (match i
           [(list a '<- (list 'mem (? notrspvar? b) n)) (remove-duplicates (filteredlist (list b)))]
           [(list (list 'mem (? notrspvar? b) n) '<- a) (remove-duplicates (filteredlist (list a b)))]
           [(list a '<- (? notnum? b)) (filteredlist (list b))]
           [(list a (? isasn? o) (? notnum? b)) (remove-duplicates (filteredlist (list a b)))]
           [(list a (? isasn? o) b) (filteredlist (list a))]
           [(list a '<- b (? isasn? o) c) (remove-duplicates (filteredlist (list b c)))]
           [(list 'return) callee]
           [(list 'call a b) (define ar (list-tail revar (numofar b)))
                             (cond
                               [(member a keywords) ar]
                               [else (filteredlist (cons a ar))])]
           [(list 'tail-call u n)
            (define ar (list-tail revar (numofar n)))
                             (sort (append (filteredlist (cons u ar)) tailcallee) sym<?)]
           [(list 'goto a)
            (filteredlist (list a))]
           [(list 'cjump a cmp b l1 l2)
            (filteredlist (list a b l1 l2))]
           [_ '()]))
  insts (make-list numinsts '()))
  )

(define (conslist x l)
  (cond
    [(string=? (substring (symbol->string x) 0 1) ":") l]
    [(number? x) l]
    [else (cons x l)]))



(define mergelive (lambda (l1 l2 ci)
  (cond
    [(empty? l2) l1]
    [else
     (define todo (first l2))
     (define others (rest l2))
     (cond
       [(member todo l1) (mergelive l1 others ci)]
       [(match ci
          [(list (? (lambda (x) (and (symbol? x) (symbol=? x todo))) a) '<- b)
           (mergelive l1 others ci)]
          [(list (? (lambda (x) (and (symbol? x) (symbol=? x todo))) a) '<- b o c)
           (mergelive l1 others ci)]
          ['(return) (mergelive l1 others ci)]
          [(list 'call a b)
           (mergelive (cond
                        [(member todo volatile) l1]
                        [else (cons todo l1)]) others ci)]
          [_
           
           (mergelive (cons todo l1) others ci)])]
       )])))

(define (findindex label)
  (- numinsts (length (member label listoflabels))))

(define (loopinst loop l)
  (cond
    [(= loop numinsts) l]
    [else
     (define l1 (list-ref l loop))
     (define l2 (match (list-ref insts loop)
                  [(list 'call 'array-error _) '()]
                  [(list 'goto label)
                   (list-ref l (findindex label))]
                  ;[(list 'cjump (? number? a) o (? number? b) label1 label2)
                  ; (if (match o
                  ;       ['< (< a b)]
                  ;       ['<= (<= a b)]
                  ;       ['= (= a b)])
                  ;     (list-ref l (findindex label1)) (list-ref l (findindex label2)))]
                  [(list 'cjump a o b label1 label2)
                   (define l21 (list-ref l (findindex label1)))
                   (define l22 (list-ref l (findindex label2)))
                   (remove-duplicates (append l21 l22))]
                  ['(return) '()]
                  [(list 'tail-call _ _) '()]
                  [_ (cond
                       [(= loop (- numinsts 1)) '()]
                       [else (list-ref l (+ loop 1))])]))
     (define ci (list-ref insts loop))
     (loopinst (+ loop 1) (list-set l loop (mergelive l1 l2 ci)))]))

(define (looplist loop l)
  (cond
    [(= loop 0) l]
    [(looplist (- loop 1) (loopinst 0 l))]))

(define unsorted (looplist numinsts uncorrected-initiallist))

(define inlist (map (lambda (x) (remove-duplicates (sort x sym<?))) unsorted))

(define (generateindexlist n)
  (cond
    [(= n 0) '()]
    [else
     (cons (- numinsts n) (generateindexlist (- n 1)))]))

(define indexlist
  (generateindexlist numinsts))

(define (killatcall l1 cr)
  (cond
    [(empty? cr) l1]
    [(remove (first cr) (killatcall l1 (rest cr)))]))

(define outlist (map
                 (lambda (i n)
                   (match i
                     ['(return) '()]
                     [(list 'call 'array-error _) '()]
                     [(list 'tail-call a b) '()]
                     [(list 'goto label) (list-ref inlist (findindex label))]
                     [(list 'cjump a o b label1 label2)
                      (define l21 (list-ref inlist (findindex label1)))
                      (define l22 (list-ref inlist (findindex label2)))
                      (sort (remove-duplicates (append l21 l22)) sym<?)]
                     [_
                      (cond
                        [(= n (- numinsts 1)) '()]
                        [else (list-ref inlist (+ n 1))])]
                   ))
                 insts indexlist))

(list (cons 'in inlist) (cons 'out outlist))

                   ))
