; 1 
; 1/2 1/4 1/10 1/20 1/100

(define (count-change amount)
    (cc amount 5)    
)
(define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1) 
          ((or < amount 0) (= kinds-of-coins 0) 0)
          (else (+ (cc amount (- kinds-of-coins 1))
                   (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins)
                )
          )
    )
)