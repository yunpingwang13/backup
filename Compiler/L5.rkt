#lang racket

(require "Lc-common.rkt")

(provide (all-defined-out))

(define L5->L4
(lambda (content)

(define pred?
  (lambda (x)
    (or (number? x) (symbol? x))))

(define prim '(+ - * < <= = read number? a? print new-array aref aset alen if new-tuple begin let letrec))

(define nonary '(read))
(define isnonary?
  (lambda (x)
    (member x nonary)))

(define unary '(print alen a? number?))
(define isunary?
  (lambda (x)
    (member x unary)))

(define binary '(+ - * < <= = new-array aref begin))
(define isbinary?
  (lambda (x)
    (member x binary)))

(define tertiary '(aset))
(define istertiary?
  (lambda (x)
    (member x tertiary)))

(define prim?
  (lambda (x)
    (member x prim)))

(define find-free-vars
  (lambda (e)
    (remove-duplicates (match e
      [(list 'lambda args e0)
       (foldl (lambda (x y) (cond [(member x y) (remove x y)][else y])) (find-free-vars e0) args)]
      [(list 'let (list (list x e0)) e1)
       (define vars (remove-duplicates(append (find-free-vars e0) (find-free-vars e1))))
       (cond [(member x vars) (remove x vars)][else vars])]
      [(list 'letrec (list (list x e0)) e1)
       (define vars (remove-duplicates(append (find-free-vars e0) (find-free-vars e1))))
       (cond [(member x vars) (remove x vars)][else vars])]
      [(list-rest f args)
       (append
        (cond
          [(prim? f) '()]
          [else (find-free-vars f)])
        (foldl append '() (map find-free-vars args)))]
      [x
       (cond
         [(or (number? x) (prim? x)) '()]
         [else (list x)])]
      ))))

(define build-num-list
  (lambda (x n)
  (cond
    [(= x n) '()]
    [else (cons x (build-num-list (+ x 1) n))])))

(define conv-lambda
  (lambda (e)
    (match e
      [(list 'lambda args exp)
       (define vars-tup (gensym))
       (define all-vars (find-free-vars exp))
       (define free-vars (foldl (lambda (x y) (cond [(member x y) (remove x y)][else y])) all-vars args))
       (define newlabel (symconcat ': (gensym)))
       (define num-list (build-num-list 0 (length free-vars)))
       (define new-top-func
         (append (list newlabel (cons vars-tup args)) (foldl (lambda (x y z)
                  (list (append
                   (list 'let (list (list x (list 'aref vars-tup y))))
                   z)))
                (list (traverse exp)) (reverse free-vars) (reverse num-list))))
       (begin (set! top-funcs (append top-funcs (list new-top-func)))
         (list 'make-closure newlabel (cons 'new-tuple free-vars)))
       ]
      )
    ))

(define sub-letrec
  (lambda (e x)
    (match e
      [(list 'lambda args exp)
       (cond
         [(member x args) e]
         [else
          (list 'lambda args (sub-letrec exp x))])]
      [(list 'let (list (list x0 e0)) e1)
       (cond
         [(symbol=? x0 x) e]
         [else
          (list 'let (list (list x0 (sub-letrec e0 x))) (sub-letrec e1 x))])]
      [(list 'letrec (list (list x0 e0)) e1)
       (cond
         [(symbol=? x0 x) e]
         [else
          (list 'letrec (list (list x0 (sub-letrec e0 x))) (sub-letrec e1 x))])]
      [(? list? l)
       (map (lambda (e0) (sub-letrec e0 x)) l)]
      [e0
       (cond
         [(and(symbol? e0)(symbol=? e0 x)) (list 'aref x 0)]
         [else e0])]
      )))

(define conv-letrec
  (lambda (e)
     (match e
       [(list 'letrec (list (list x e1)) e2)
        (define subbed-e1 (traverse (sub-letrec e1 x)))
        (define subbed-e2 (traverse (sub-letrec e2 x)))
        (list 'let (list (list x (list 'new-tuple 0)))
              (list 'begin (list 'aset x 0 subbed-e1)
                    subbed-e2))
        ]
    )))

(define conv-app
  (lambda (e)
    (match e
      [(list-rest (list 'lambda args exp) es)
       (define new-closure (conv-lambda (list 'lambda args exp)))
       (define newsym (gensym))
       (list 'let (list (list newsym new-closure))
         (append (list (list 'closure-proc newsym) (list 'closure-vars newsym)) (map traverse es)))]
      [(list-rest e0 es)
       (define newsym (gensym))
       (list 'let (list (list newsym (traverse e0))) (append (list (list 'closure-proc newsym) (list 'closure-vars newsym))
                                                  (map traverse es)))]
      ))
    )

(define top-funcs '())

(define traverse
  (lambda (e)
    (match e
      [(list 'lambda l e0)
       (conv-lambda e)]
      [(list 'let (list (list x e0)) e1)
       (list 'let (list (list x (traverse e0))) (traverse e1))]
      [(list 'letrec (list (list x e0)) e1)
       (conv-letrec e)]
      [(list 'if e0 e1 e2)
       (list 'if (traverse e0) (traverse e1) (traverse e2))]
      [(list-rest 'new-tuple es)
       (cons 'new-tuple (map traverse es))]
      [(list 'begin e0 e1)
       (list 'begin (traverse e0) (traverse e1))]
      [(list-rest f args)
       (cond
         [(prim? f)
          (append (list f) (map traverse args))]
         [else
          (conv-app e)])]
      [(? isnonary? o)
       (define newlabel (symconcat ': (gensym)))
       (define newfunc
         (list newlabel (list (gensym)) (list o)))
       (begin (set! top-funcs (append top-funcs (list newfunc)))
              (list 'make-closure newlabel (list 'new-tuple)))]
      [(? isunary? o)
       (define newlabel (symconcat ': (gensym)))
       (define newfunc
         (list newlabel (list (gensym) 'x) (list o 'x)))
       (begin (set! top-funcs (append top-funcs (list newfunc)))
              (list 'make-closure newlabel (list 'new-tuple)))]
      [(? isbinary? o)
       (define newlabel (symconcat ': (gensym)))
       (define newfunc
         (list newlabel (list (gensym) 'x 'y) (list o 'x 'y)))
       (begin (set! top-funcs (append top-funcs (list newfunc)))
              (list 'make-closure newlabel (list 'new-tuple)))]
      [(? istertiary? o)
       (define newlabel (symconcat ': (gensym)))
       (define newfunc
         (list newlabel (list (gensym) 'x 'y 'z) (list o 'x 'y 'z)))
       (begin (set! top-funcs (append top-funcs (list newfunc)))
              (list 'make-closure newlabel (list 'new-tuple)))]
      [_ e]
      )))

(define result (append (list (traverse content)) top-funcs))
result
))
