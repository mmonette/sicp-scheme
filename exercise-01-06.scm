;; Exercise 1.6
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (square-root x)
  (sqrt-iter 1.0 x))

;; What happens when new-if is used instead of if in sqrt-iter?
;; Answer: stack overflow
;;  Since new-if is a function, both all of its parameters are evaluated
;;  upon execution.  The second parameter is another call to new-if, which 
;;  then evaluates sqrt-iter, which calls new-if, all the way down.