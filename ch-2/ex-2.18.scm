(define (reverse lis)
    (define (trav lis rev)
        (if (null? lis) rev
            (trav (cdr lis) (cons (car lis) rev) )
        )
    )
    (trav lis #nil)
)

(display 
    (reverse (list 1 4 9 16 25))
)