#lang sicp

(#%require rackunit)

(define (max-two x y z)
  (if (>= x y)
      (if (>= y z)
          (list x y)
          (list x z))
      (if (>= x z)
          (list y x)
          (list y z))))

(define (sum-square x y)
  (+ (* x x) (* y y)))


(define (solution x y z)
  (apply sum-square (max-two x y z)))


(check-equal? (solution 6 5 4) 61)
(check-equal? (solution 5 5 4) 50)
(check-equal? (solution 3 3 2) 18)
(check-equal? (solution 1 2 3) 13)