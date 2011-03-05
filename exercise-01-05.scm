;; Exercise 1.5
;; Given two definitions:
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
;; What behavior results when the following expression is evaluated with an
;; interpreter that uses applicative-order evalaution?
(test 0 (p))
;; answer: endless loop, because with applicative order, every combination within an expression is evaluated before the expression itself.
;; (p) keeps getting evaluated to (p), etc.
;; What about normal-order evaluation?
;; answer: 0.  Since the predicate (= x 0) is true, the "true" branch is returned without ever having to 
;; evaluate the "false" branch.