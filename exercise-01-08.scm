;; Exercise 1.8
;; Implement a cube-root function using Newton's method for cube roots,
;; which uses the approximation function:
;; (x/(y^2) + 2y) / 3
(define (square x)
  (* x x))

(define (cube x)
  (* (square x) x))

(define (good-enough? guess prior-guess)
    (< (abs (- (square guess) (square prior-guess))) 0.0001))

(define (improve-cube guess x)
  (/ (+ (* 2 guess) (/ x (square guess))) 3))

(define (cube-root-iter guess prior-guess x)
  (if (good-enough? guess prior-guess)
      guess
      (cube-root-iter (improve-cube guess x)
                      guess
                      x)))

(define (cube-root x)
  (cube-root-iter 1.0 0.0 x))
