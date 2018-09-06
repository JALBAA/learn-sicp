(define (for-each cb lis)
    (if (null? lis)
        #nil
        (
            (cb (car lis))
            (for-each cb (cdr lis))
        )
    )
)

(for-each (lambda (x) (display x) (newline))
          (list 1 2 3 4)
)