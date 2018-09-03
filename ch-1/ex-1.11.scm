; f(n): 
; n < 3, f(n) = n
; n >= 3, f(n) = f(n - 1) + 2 * f(n - 2) + 3 * f(n - 3)

; 递归，自顶向下
(define (recrusion n)
    (if (< n 3) n
        (+ (recrusion (- n 1)) (* 2 (recrusion (- n 2))) (* 3 (recrusion (- n 3))) )
    )
)

(display 
    (recrusion 5)
)

(newline)


; fn(3) == 4
; fn(4) == 
; 迭代，自底向上
(define (iteration n)
    (define (iter i i-1 i-2 i-3)
        (let ( (new-i-1 (+ i-1 (* 2 i-2) (* 3 i-3)))
               (new-i-2  i-1)
               (new-i-3  i-2)
             )
             (if (= i n) new-i-3
                 (iter (+ i 1) new-i-1 new-i-2 new-i-3)
             )
        )
    )
    (if (< n 3)
        n
        (iter 3 2 1 0)
    )

)


(display 
    (iteration 5)
)

(newline)
