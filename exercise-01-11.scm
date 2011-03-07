;; Exercise 1.11
;; A function is defined by the rule that f(n) = n if n < 3 and
;; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n>= 3.  Write a procedure
;; that computes f by means of a recursive process.

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) 
         (* 2 (f (- n 2))) 
         (* 3 (f (- n 3))))))

;; Write a procedure that computes f by means of an iterative
;; process
(define (f-iter n)
  (define (f-iter-helper i x y z)
    (if (< i 3)
        x
        (f-iter-helper (- i 1)
                       (+ x (* 2 y) (* 3 z))
                       x
                       y)))
  (if (< n 3)
      n
      (f-iter-helper n 2 1 0)))
