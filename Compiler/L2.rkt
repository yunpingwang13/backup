#lang racket

(provide (all-defined-out))

(require "graph-L2.rkt")
(require "spill-L2.rkt")
(require "liveness-L2.rkt")
(require "L2-common.rkt")

(define L2->L1
(lambda (content)

(define main (first content))

(define funcs (rest content))

(define ok?
      (lambda (l)
        (cond
          [(empty? l) #t]
          [else
           (define c (first l))
           (if (boolean? (second c)) #f (ok? (rest l)))])))

(define compileL2
  (lambda (func)
    (define liv (liveness func))
    (define asgn (assign func liv))
    (define replace-stack-arg
      (lambda (func)
        (match func
          [(list-rest name arg spill insts)
           (append (list name arg spill) (map (lambda (inst)
                  (match inst
                    [(list a '<- (list 'stack-arg n))
                     (list a '<- (list 'mem 'rsp
                                       (+ (* spill 8) n)
                                       ))]
                    [_ inst])) insts))]
          [_ func])))
    (define replace
      (lambda (torep rep l)
        (cond
          [(list? l)
        (map
         (lambda (y)
           (cond
             [(list? y) (replace torep rep y)]
             [(and (symbol? y) (symbol=? torep y)) rep]
             [else y])) l)]
          [else
           l
           ])))
    (define remove-empty-list
      (lambda (l)
        (if (member '() l)
          (remove-empty-list (remove '() l))
          l)))
    (define assign-to-reg
      (lambda (func asgn)
        (remove-empty-list (map
         (lambda (p)
           (define result (foldl (lambda (x l) (replace (first x) (second x) l)) p asgn))
                   (match result
                     [(list (? symbol? a) '<- (? symbol? b))
                      (if (symbol=? a b) '() result)]
                     [_ result])
           )
         func))
        ))
    (cond
      [(ok? asgn)
       (list #t (replace-stack-arg (assign-to-reg func asgn)))
       ]
      [else (list #f asgn)])
    ))

(define recur-assign
  (lambda (func varlist totallist)
    (cond
      [(empty? varlist) #f]
      [else
    (define newsym (gen-newsym totallist))
    (define newfunc (spill func (first varlist) newsym))
    (define assignment (compileL2 newfunc))
    (cond
      [(first assignment) (second assignment)]
      [else
       (recur-assign newfunc (rest varlist) (cons newsym varlist))
      ]
      )
    ])))

(define init-assign
  (lambda (func)
    (define assignment (compileL2 func))
    (cond
      [(first assignment) (second assignment)]
      [else
       (define attempt (second assignment))
       (define varlist (map (lambda (l) (first l)) attempt))
       (recur-assign func varlist varlist)
      ]
      )
    ))

(define result (map init-assign funcs))

(cond
                 [(member #f result)
                  "\"could not register allocate\""]
                 [else (append (list main) result)]
                 )
))
