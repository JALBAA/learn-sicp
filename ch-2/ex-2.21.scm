(define (square-list2 lis)
    (if (null? lis)
        #nil
        (cons (* (car lis) (car lis)) (square-list2 (cdr lis)) )
    )
)

(define (square-list lis)
    (map (lambda (n) (* n n)) lis)
)

(display
    (square-list (list 1 2 3 4))    
)
(newline)
(display
    (square-list2 (list 1 2 3 4))    
)