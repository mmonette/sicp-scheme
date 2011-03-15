(define quadratic-root
  (lambda (a b c) (/ (+ (* -1 b) (sqrt (- ( * b b) (* 4 a c)))) (* 2 a))))

;; Section 1.2.2 Tree Recursion

;; change counting example
;;(let ((call-count 0))
(define (count-change amount)
;;  (let ((call-count 0))
    (define (cc amount kinds-of-coins)
;;      (set! call-count (+ call-count 1))
      (display "cc ") (display amount) (display " ") (display kinds-of-coins) (newline)
      (cond ((= amount 0) 1)
            ((or (< amount 0) (= kinds-of-coins 0)) 0)
            (else (+ (cc amount
                         (- kinds-of-coins 1))
                     (cc (- amount
                            (first-denomination kinds-of-coins))
                         kinds-of-coins)))))

    (define (first-denomination kinds-of-coins)
      (cond ((= kinds-of-coins 1) 1)
            ((= kinds-of-coins 2) 5)
            ((= kinds-of-coins 3) 10)
            ((= kinds-of-coins 4) 25)
            ((= kinds-of-coins 5) 50)))
  (cc amount 5))