#lang racket

(require "L2-common.rkt")

(provide (all-defined-out))


(define assign (lambda (func liveness)

                (define insts (rest (rest (rest func))))
                (define inlist (rest (first liveness)))
                (define outlist (rest (second liveness)))
                

(define genkill
  (lambda (i)
    (remove 'rsp (match i
           [(list a '<- (list 'mem (? notrspvar? b) n)) (list a)]
           [(list (list 'mem (? notrspvar? b) n) '<- a) '()]
           [(list (list 'mem _ _) '<- _) '()]
           [(list a (? isops? o) _) (list a)]
           [(list a '<- b (? isasn? o) c) (list a)]
           [(list 'call a b) volatile]
           [_ '()]))))

(define killlist (map genkill insts))

(define varlist (sort (foldl remove (remove-duplicates (foldl (lambda (x y)
                                                              (append (cond
                                                                [(symbol? x) (list x)]
                                                                [else '()]) y))
                                                              '() (foldl append '() inlist outlist killlist))) (cons 'rsp reglist)) sym<?))
(define sop '(<<= >>=))

(define process-sop
  (lambda (x l)
    (cond
      [(empty? l) '()]
      [else
       (define i (first l))
       (match i
         [(list a (? (lambda (y) (member y sop)) o) (? (lambda (y) (and (symbol? y) (symbol=? x y))) b))
          x]
         [_ (process-sop x (rest l))])])))

(define conflist
  (append reglist (remove '() (remove-duplicates (map (lambda (x) (process-sop x insts)) varlist)))))

(define totallist (sort (append reglist varlist) sym<?))



(define (serial x)
  (cond
    [(= x (length insts)) '()]
    [else (cons x (serial (+ x 1)))]))

(define (intersection l1 l2)
  (cond
    [(empty? l1) '()]
    [else
     (define x (first l1))
     (append
      (cond
        [(member x l2) (list x)]
        [else '()])
      (intersection (rest l1) l2))]))

(define used-variable (lambda (v n l ol kl i)
                        (define interflist
                         (remove-duplicates (append
                         (cond
                              [(member v ol) kl]
                              [else '()])
                         (cond
                              [(member v kl) ol]
                              [else '()])
                         (cond
                          [(and (= n 0) (member v l))
                           (remove v l)]
                          [else '()])
                         (cond
                          [(member v ol) ol]
                          [else '()]))
                           ))
                        (define first-fixed (remove-duplicates (match i
                          [(list (? (lambda (x) (and (symbol? x)(symbol=? x v))) a) '<- b)
                           (remove b interflist)]
                          [(list a '<- (? (lambda (x) (and (symbol? x) (symbol=? x v))) b))
                           (remove a interflist)]
                          [_ interflist
                           ])))
                        (remove 'rsp (remove v (remove-duplicates (cond
                          [(and (symbol? v) (symbol=? v 'rcx)) (append first-fixed reglist)]
                          [(member v conflist)
                           (cond
                             [(member v reglist) (append first-fixed conflist)]
                             [else (append first-fixed (remove 'rcx conflist))])]
                          [else first-fixed]))))
                        ))

(define related-variable (lambda (x) (foldl (lambda (l1 l2 l3 l4 l5 l6)
                                              (remove-duplicates (append (used-variable x l1 l2 l3 l4 l5) l6))) '() (serial 0) inlist outlist killlist insts)))

(define (findgraph l)
  (map (lambda (x) (cons x (sort (related-variable x) sym<?))) l))

(define graph (findgraph totallist))

(define (build-colors x)
  (cond
    [(= x (length reglist)) '()]
    [else (cons (+ x 1) (build-colors (+ x 1)))]))

(define list-of-colors (build-colors 0))

(define initial-color-assignment (map (lambda (x y) (list y x)) reglist list-of-colors))

(define (find-assignment x l)
  (cond
    [(empty? l) #f]
    [else
  (define relation (related-variable x))
  (define color-to-check (first l))
  (define color (first color-to-check))
  (define color-var (rest color-to-check))
    (cond
      [(common-element? relation color-var) (find-assignment x (rest l))]
      [else color-to-check])]))

(define common-element? (lambda (l1 l2)
                          (foldl (lambda (x y) (or x y)) #f (map (lambda (x) (not (boolean? (member x l2)))) l1))))

(define (assign-var cl vl)
                    (cond
                      [(empty? vl) '()]
                      [else
  (define var (first vl))
  (define assignment (find-assignment var cl))
  (define findreg
    (lambda (l) (define x (first l)) (cond [(member x reglist) x][else (findreg (rest l))])))
 (cond
    [(boolean? assignment)
     (cons (list var assignment) (assign-var cl (rest vl)))]
    [else
  (define color (first assignment))
  (define reg (findreg (rest assignment)))
  (define newcl (map
                 (lambda (l) (cond
                               [(= (first l) color) (cons color (cons var (rest l)))]
                               [else l]))
                 cl))
  (define nextasn (assign-var newcl (rest vl)))
  (cons (list var reg) nextasn)])
  ])
  )
(define stack-list
  (sort varlist (lambda (x y)
                  (> (length (related-variable x))
                     (length (related-variable y))))))

(assign-var initial-color-assignment stack-list)
                ))
