;; exercise 1.3
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (ss-two-largest x y z)
  (cond ((> x y) (sum-of-squares x (max y z)))
        (else (sum-of-squares y (max x z)))))

;; exercise 1.5
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
;; comment
;; done

