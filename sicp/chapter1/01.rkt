#lang sicp

(#%require rackunit)

;; First Expression
(define c 10)
(check-equal? c 10)

;; Second Expression
(define d (+ 5 3 4))
(check-equal? d 12)

;; Second Expression
(define e (- 9 1))
(check-equal? e 8)


;; Third Expression
(define f (/ 6 2))
(check-equal? f 3)

;; Fourth Expression
(define g (+ (* 2 4) (- 4 6)))
(check-equal? g 6)


;; Define A
(define a 3)
(check-equal? a 3)


;; Define B
(define b (+ a 1))
(check-equal? b 4)

(check-equal?
 (+ a b (* a b))
 19)


(check-equal?
(= a b) #f)


(check-equal?
;; if b is greater than a and b is less than a*b
 (if (and (> b a) (< b (* a b)))
     b
     a)
 ;; Check answer is b
 b)



(check-equal?
 ;; If a=4 return 6 (false) if b=4 then add 6&7&a(3) = 16, else return 25
 (cond ((= a 4) 6)
       ((= b 4) (+ 6 7 a))
       (else 25))
 ;; Check answer is 16
 16)

(check-equal?
 ;; Add 2 if b>a, then b if not then use a
 (+ 2 (if (> b a) b a))
 ;; b is greater than a so it's 2 + 4 = 6
 6)

(check-equal?
 ;; if a > b then return a, if a < b then return b, else -1 and multiply by a+1
 (* (cond ((> a b) a)
          ((< a b) b)
          (else -1))
    (+ a 1))

 ;; a<b so it's b(4) * a(3)+1 =4; so 4*4 = 16
 16)