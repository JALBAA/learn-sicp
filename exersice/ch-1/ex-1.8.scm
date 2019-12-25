; x/(y * y)  + 2y
; ___________
;     3
; y是x的立方根的一个近似值




(define (lifang num guessNum prev)
    (define (abs num) 
        (if (< num 0) 
            (- num)
            num
        )
    )
    (define (improve num target) 
        (/ (+ (/ num (* target target)) (* 2 target)) 3)
     ;    (if (< (abs (- newTarget target)) 0.001) 
    )
    (if (< (abs (- guessNum prev)) 0.001)
        guessNum
        (lifang num (improve num guessNum) guessNum)
    )
)
(newline)
(display (lifang 8.0 1 0) )
(newline)
