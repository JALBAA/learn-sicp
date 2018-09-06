(define x (list 1 2 3))
(define y (list 4 5 6))

(append x y)  ; (1 2 3 4 5 6)
(cons x y)    ; ((1 2 3) (4 5 6)) 答错了；正确答案: ((1 2 3) 4 5 6)，序对，car 是 list:(1 2 3), cdr 是 list:(4 5 6)
(list x y)    ;((1 2 3) (4 5 6))，list，car是(1 2 3), cdr是 ((1 2 3))

(display
    (car (list x y))
)