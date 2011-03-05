;; Exercise 1.7
;; Implement a new good-enough? function which measures how much the guess changes
;; from one iteration to the next and stops when the change is small enough.
(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;;(define (good-enough? guess x)
;;  (< (abs (- (square guess) x)) 0.001))
(define (good-enough? guess prior-guess)
    (< (abs (- (square guess) (square prior-guess))) 0.0001))

(define (sqrt-iter guess prior-guess x)
  (if (good-enough? guess prior-guess)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(define (square-root x)
  (sqrt-iter 1.0 0.0 x))

;; What happens when new-if is used instead of if in sqrt-iter?
;; Answer: stack overflow
;;  Since new-if is a function, both all of its parameters are evaluated
;;  upon execution.  The second parameter is another call to new-if, which 
;;  then evaluates sqrt-iter, which calls new-if, all the way down.