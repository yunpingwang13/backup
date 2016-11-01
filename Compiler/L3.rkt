#lang racket

(require "Lc-common.rkt")

(provide (all-defined-out))

(define L3->L2
(lambda (content)

(define main-exp (first content))

(define funcs (rest content))

(define list-func-labels (map (lambda (l) (first l)) funcs))

(define replace-variable-names
  (lambda (a r e)
    (map
     (lambda (x)
       (match x
         [(? (lambda (n) (list? n)) s) (replace-variable-names a r x)]
         [(? (symeq? a) s) r]
         [_ x]))
     e)
    ))

(define comp-let
  (lambda (tovar d e v)
    (append
       (comp-exp d v)
       (comp-exp e tovar))))

(define comp-plus
  (lambda (tovar v1 v2)
    (define tmp (gensym))
    (list
        (list tmp '<- (encode v1))
        (list tmp '+= (encode v2))
        (list tmp '-= 1)
        (list tovar '<- tmp)
        )))

(define comp-minus
  (lambda (tovar v1 v2)
    (define tmp (gensym))
    (list
        (list tmp '<- (encode v1))
        (list tmp '-= (encode v2))
        (list tmp '+= 1)
        (list tovar '<- tmp)
        )))

(define comp-mult
  (lambda (tovar v1 v2)
    (define tmp (gensym))
    (list
        (list tmp '<- (encode v1))
        (list tmp '>>= 1)
        (list tovar '<- (encode v2))
        (list tovar '>>= 1)
        (list tovar '*= tmp)
        (list tovar '*= 2)
        (list tovar '+= 1))))

(define comp-cmp
  (lambda (tovar op v1 v2)
    (list
     (list tovar '<- (encode v1) op (encode v2))
     (list tovar '<<= 1)
     (list tovar '+= 1))))

(define comp-a?
  (lambda (tovar v1)
    (list
     (list tovar '<- (encode v1))
     (list tovar '&= 1)
     (list tovar '*= -2)
     (list tovar '+= 3))))

(define comp-number?
  (lambda (tovar v1)
    (list
     (list tovar '<- (encode v1))
     (list tovar '&= 1)
     (list tovar '*= 2)
     (list tovar '+= 1))))

(define comp-alen
  (lambda (tovar v1)
    (list
     (list tovar '<- (list 'mem v1 0))
     (list tovar '<<= 1)
     (list tovar '+= 1))))

(define comp-aset
  (lambda (tovar v1 v2 v3)
    (define tmp (gensym))
    (define tmp2 (gensym))
    (define pass-label (symconcat ': (gensym)))
    (define fail-label (symconcat ': (gensym)))
    (list
     (list tmp2 '<- (encode v2))
     (list tmp2 '>>= 1)
     (list tmp '<- (list 'mem v1 0))
     (list 'cjump tmp2 '< tmp pass-label fail-label)
     fail-label
     (list 'rdi '<- v1)
     (list 'rsi '<- (encode v2))
     (list 'call 'array-error 2)
     pass-label
     (list tmp2 '*= 8)
     (list tmp2 '+= v1)
     (list (list 'mem tmp2 8) '<- (encode v3))
     (list tovar '<- 1))))

(define comp-aref
  (lambda (tovar v1 v2)
    (define tmp (gensym))
    (define tmp2 (gensym))
    (define pass-label (symconcat ': (gensym)))
    (define fail-label (symconcat ': (gensym)))
    (list
     (list tmp2 '<- (encode v2))
     (list tmp2 '>>= 1)
     (list tmp '<- (list 'mem v1 0))
     (list 'cjump tmp2 '< tmp pass-label fail-label)
     fail-label
     (list 'rdi '<- v1)
     (list 'rsi '<- (encode v2))
     (list 'call 'array-error 2)
     pass-label
     (list tmp2 '+= 1)
     (list tmp2 '*= 8)
     (list tmp2 '+= v1)
     (list tovar '<- (list 'mem tmp2 0))
     )))
     
(define comp-print
  (lambda (tovar v1)
    (append
    (list
        (list 'rdi '<- (encode v1))
        (list 'call 'print 1))
    (cond
      [((symeq? tovar) 'rax) '()]
      [else (list (list tovar '<- 1))]
        )
        )))

(define comp-if
  (lambda (tovar v1 e1 e2)
    (define true-label (symconcat ': (gensym)))
    (define false-label (symconcat ': (gensym)))
    (append
     (list (list 'cjump (encode v1) '= 1 false-label true-label))
     (list true-label)
     (comp-exp e1 tovar)
     (cond
      [((symeq? tovar) 'rax) '()]
      [else (list (list 'rax '<- tovar))]
        )
     '((return))
     (list false-label)
     (comp-exp e2 tovar)
     (cond
      [((symeq? tovar) 'rax) '()]
      [else (list (list 'rax '<- tovar))]
        )
     )))

(define arg-assign
  (lambda (l n)
    (cond
      [(empty? l) '()]
      [(< n 6)
       (cons
        (list (list-ref arg-reg n) '<- (encode (first l)))
        (arg-assign (rest l) (+ n 1)))]
      [else
       (cons
        (list (list 'mem 'rsp (stack-pos n)) '<- (encode (first l)))
        (arg-assign (rest l) (+ n 1)))]
      )
    ))

(define arg-retrieve
  (lambda (l n t)
    (cond
      [(empty? l) '()]
      [(< n 6)
       (cons
        (list (encode (first l)) '<- (list-ref arg-reg n))
        (arg-retrieve (rest l) (+ n 1) t))]
      [else
       (cons
        (list (encode (first l)) '<- (list 'stack-arg (* (- t (+ n 1)) 8)))
        (arg-retrieve (rest l) (+ n 1) t))]
      )
    ))

(define comp-call
  (lambda (tovar l1 args)
    (define return-label (symconcat ': (gensym)))
    (append
     (cond
      [(and (< (length args) 7) ((symeq? tovar) 'rax))
       '()
       ]
      [else
       (list (list (list 'mem 'rsp -8) '<- return-label))
       ]
      )
     (arg-assign args 0)
     (cond
      [(and (< (length args) 7) ((symeq? tovar) 'rax))
       (list (list 'tail-call l1 (length args)))
       ]
      [else
       (list
        (list 'call l1 (length args))
        return-label
        (list tovar '<- 'rax))
       ]
      )
     )))

(define comp-new-array
  (lambda (tovar v1 v2)
    (list
     (list 'rdi '<- (encode v1))
     (list 'rsi '<- (encode v2))
     (list 'call 'allocate 2)
     (list tovar '<- 'rax))))

(define recur-new-tuple
  (lambda (tovar v1 elems n)
    (cond
      [(empty? elems)
       (list (list tovar '<- 'rax))]
      [else
       (cons (list (list 'mem v1 n) '<- (encode (first elems)))
             (recur-new-tuple tovar v1 (rest elems) (+ n 8)))])))

(define comp-new-tuple
  (lambda (tovar elems)
    (define pointer (gensym))
    (append
     (list
      (list 'rdi '<- (encode (length elems)))
      (list 'rsi '<- 1)
      (list 'call 'allocate 2)
      (list pointer '<- 'rax))
      (recur-new-tuple tovar pointer elems 8)
      )))

(define comp-read
  (lambda (tovar)
    (append
     (list (list 'call 'read 0))
     (cond
      [((symeq? tovar) 'rax)
       '()
       ]
      [else
       (list (list tovar '<- 'rax))
       ]
      )
             )))

(define comp-exp
  (lambda (exp tovar)
    (cond
      [(empty? exp) '()]
      [else
    (match exp
      [(list 'let (list (list v d)) e)
       (comp-let tovar d e v)]
      [(list '+ v1 v2)
       (comp-plus tovar v1 v2)]
      [(list '- v1 v2)
       (comp-minus tovar v1 v2)]
      [(list '* v1 v2)
       (comp-mult tovar v1 v2)]
      [(list (? (symmember? cmpop) op) v1 v2)
       (comp-cmp tovar op v1 v2)]
      [(list 'a? v1)
       (comp-a? tovar v1)]
      [(list 'alen v1)
       (comp-alen tovar v1)]
      [(list 'aset v1 v2 v3)
       (comp-aset tovar v1 v2 v3)]
      [(list 'print v1)
       (comp-print tovar v1)]
      [(list 'if v1 e1 e2)
       (comp-if tovar v1 e1 e2)]
      [(list-rest (? islabel? l1) args)
       (comp-call tovar l1 args)]
      [(list 'aref v1 v2)
       (comp-aref tovar v1 v2)]
      [(list 'new-array v1 v2)
       (comp-new-array tovar v1 v2)]
      [(list 'closure-proc v1)
       (comp-aref tovar v1 0)]
      [(list 'closure-vars v1)
       (comp-aref tovar v1 1)]
      [(list-rest 'new-tuple elems)
       (comp-new-tuple tovar elems)]
      [(list 'make-closure v1 v2)
       (comp-new-tuple tovar (list v1 v2))]
      [(list 'number? v1)
       (comp-number? tovar v1)]
      ['(read)
       (comp-read tovar)]
      [(list-rest v1 v2)
       (comp-call tovar v1 v2)]
      [_ (list (list tovar '<- (encode exp))
               )]
      )
    ])))

(define find-keyword-arg
  (lambda (a)
    (cond
      [(empty? a) '()]
      [(member (first a) keyword-arg-list) (cons (first a)
                          (find-keyword-arg (rest a)))]
      [else (find-keyword-arg (rest a))])))

(define gen-keyword-sub
  (lambda (a)
    (cond
      [(empty? a) '()]
      [else (cons (gensym) (gen-keyword-sub (rest a)))])))

(define sub-args
  (lambda (ka ks a)
    (map
     (lambda (x)
       (cond
         [(and (symbol? x) (symbol=? ka x)) ks]
         [else x])
       )
     a)))

(define compileL3-func
  (lambda (f)
    (define func-label (first f))
    (define func-arg (second f))
    (define keyword-arg (find-keyword-arg func-arg))
    (define keyword-sub (gen-keyword-sub keyword-arg))
    (define subbed-args (foldl sub-args func-arg keyword-arg keyword-sub))
    (define func-exp (third f))
    (define subbed-insts
      (cond
        [(empty? keyword-arg) func-exp]
        [else (foldl replace-variable-names func-exp keyword-arg keyword-sub)]
        ))
    ;(define return-val (gensym))
    (define header (list func-label (length func-arg) 0))
    (define retrieval (arg-retrieve subbed-args 0 (length func-arg)))
    (define insts (comp-exp subbed-insts 'rax))
    ;(define footer (list (list 'rax '<- return-val) '(return)))
    (define footer '((return)))
    (append header retrieval insts footer)
    ))
    
(define main-label (symconcat ': (gensym)))
 (append
 (list main-label)
 (list (append (list main-label 0 0) (comp-exp main-exp 'rax) '((return))))
 (map compileL3-func funcs))
))
