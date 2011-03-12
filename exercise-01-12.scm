;; Exercise 1.12
;; Write a procedure that computes elements of Pascal's triangle by means of a recursive process
;; 1
;; 1 1
;; 1 2 1
;; 1 3 3 1
;; 1 4 6 4 1

(define (pascal row entry)
  (cond ((= row entry) 1)
        ((< entry 1) 0)
        ((< row 0) 0)
        ((> entry row) 0)
        (else (+ (pascal (- row 1) (- entry 1))
                 (pascal (- row 1) entry)))))