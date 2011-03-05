;; What is the response printed by the interpreter for each expressoin? 
10
;; answer: 10
(+ 5 3 4)
;; answer: 12
(- 9 1)
;; answer: 8
(/ 6 2)
;; answer: 3
(+ (* 2 4) (- 4 6))
;; answer: 6
(define a 3)
;; answer: none
(define b (+ a 1))
;; answer: none
(+ a b (* a b))
;; answer: 19
(= a b)
;; answer: #f
(if (and (> b a) (< b (* a b)))
    b
    a)
;; answer: 4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;; answer: 16
(+ 2 (if (> b a) b a))
;; answer: 6
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;; answer: 16
