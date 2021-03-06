;; Excercise 1.15
;; The sine of an angle (specified in radians) can be computed by making use of the approximation sin x ~ x if x is sufficiently small,
;; and the trigonometric identity 
;; sin x = 3sin(x/3) - 4sin^3(x/3)
;; to reduce the size of the argument of sine.  These ideas are incorporated in the following procedures:

(define (cube x)
  (* x x x))

(define (p x)
  (display "p ") (display x) (newline)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;; a.  How many times is the procedure p applied when (sine 12.15) is evaluated?
;; Answer: 5.
;; b.  What is the order of growth in space and number of steps (as a function of a) used by the process
;; generated by the sine procedure when (sine a) is evaluated?
;; Answer:  This is a linear recursion, with space growing O(n).  The number of steps are growing very slowly, with O(log n)