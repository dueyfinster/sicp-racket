#lang sicp

(#%require rackunit)


;; Describe the function below
(define (a-plus-abs-b a b)
 ((if (> b 0) + -) a b))
;; if b is greater than 0 - we add a + b
;; else we do a - b

(check-equal? (a-plus-abs-b -2 6) 4)
(check-equal? (a-plus-abs-b 2 6) 8)