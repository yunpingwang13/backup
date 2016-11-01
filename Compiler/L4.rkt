#lang racket

(require "Lc-common.rkt")

(provide (all-defined-out))

(define L4->L3
(lambda (content)

(define pred?
  (lambda (x)
    (or (number? x) (symbol? x))))

(define (find exp context)
  (match exp
    [(list 'begin e1 e2)
     (find e1 (list 'let-context (gensym) e2 context))]
    [(list 'let (list (list x d)) e)
     (find d (list 'let-context x e context))]
    [(list 'if c t e)
     (find c (list 'if-context t e context))
     ]
    [(list-rest f args)
     (find f (list 'func-context args context))
     ]
    [(? pred? x)
     (fill exp context)
     ]
    ))

(define (fill d context)
  (match context
    [(list 'if-context t e k)
     (define newsym (gensym))
     (if (pred? d)
         (list 'if d (find t k) (find e k))
         (list 'let (list (list newsym d))
               (list 'if newsym (find t k) (find e k)))
         )]
    [(list 'func-context a k)
     (define newsym (gensym))
     (cond
       [(empty? a)
        (if (pred? d)
            (fill (list d) k)
            (list 'let (list (list newsym d))
                  (fill (list newsym) k)))
        ]
       [else
        (if (pred? d)
            (find (first a) (list 'arg-context d '() (rest a) k))
            (list 'let (list (list newsym d))
                  (find (first a) (list 'arg-context newsym '() (rest a) k)))
            )]
         )]
    [(list 'arg-context f normed tonorm k)
     ;(displayln k)
     ;(displayln normed)
     ;(displayln tonorm)
     ;(displayln d)
     (cond
       [(pred? d)
        (cond
          [(empty? tonorm)
           (fill (append (list f) normed (list d)) k)]
          [else
           (find (first tonorm) (list 'arg-context f (append normed (list d)) (rest tonorm) k))]) 
        ]
       [else
        (define newsym (gensym))
        ;(fill current (list 'let-context newsym (append (list f) normed (list newsym) (rest tonorm)) k))
        (cond
          [(empty? tonorm)
           (list 'let (list (list newsym d)) (fill (append (list f) normed (list newsym)) k))]
          [else
           (list 'let (list (list newsym d)) (find (first tonorm) (list 'arg-context f (append normed (list newsym)) (rest tonorm) k)))
           ])
        ]
        )]
    [(list 'let-context x e k)
     (list 'let (list (list x d)) (find e k))]
    ['(no-context)
     d]
  ))

(define replace-var
  (lambda (x n e)
    (match e
      [(list 'let (list (list x0 d)) e0)
       (if (symbol=? x0 x)
           (list 'let (list (list x0 (fresh-var d))) (fresh-var e0))
           (list 'let (list (list x0 (replace-var x n (fresh-var d)))) (replace-var x n (fresh-var e0))))]
      [(? list? l)
       (map (lambda (x0) (replace-var x n (fresh-var x0))) l)]
      [d
       (if (and (symbol? d) (symbol=? d x)) n d)])))
           

(define fresh-var
  (lambda (e)
    (match e
      
      [(list 'let (list (list x d)) e0)
       (define newsym (gensym))
       (list 'let (list (list newsym (fresh-var d))) (replace-var x newsym (fresh-var e0)))]
      [(? list? l)
       (map fresh-var l)]
      [d d])))

(define norm
  (lambda (e)
    ;(find (fresh-var e) '(no-context))
(find e '(no-context))
    ))

(define result (append (list (norm (first content))) (map (lambda (f) (append (list (first f) (second f) (norm (third f))))) (rest content))))
result
))
