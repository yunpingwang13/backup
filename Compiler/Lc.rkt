#lang racket

(require "L1.rkt")
(require "L2.rkt")
(require "L3.rkt")
(require "L4.rkt")
(require "L5.rkt")

(define testfile "1.L5")

(define file-to-compile (open-input-file (cond
      [(equal? (current-command-line-arguments) '#())
       testfile]
      [else (command-line #:args (filename) filename)])
    ))

(define content (read file-to-compile))

(define L4 (L5->L4 content))
(display L4 (open-output-file "prog.L4" #:exists 'replace))
(define L3 (L4->L3 L4))
(display L3 (open-output-file "prog.L3" #:exists 'replace))
(define L2 (L3->L2 L3))
(display L2 (open-output-file "prog.L2" #:exists 'replace))
(define L1 (L2->L1 L2))
(display L1 (open-output-file "prog.L1" #:exists 'replace))
(L1->asm L1)