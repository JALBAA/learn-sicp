; last-pair
(define (last-pair lis)
    (if (null? (cdr lis)) (car lis)
        (last-pair (cdr lis))
    )
)
(display
    (last-pair (list 1  2 3 4 5))
)