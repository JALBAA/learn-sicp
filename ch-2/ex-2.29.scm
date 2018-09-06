(define (make-mobile left right)
    (list left right)
)

(define (make-branch length structure)
    (list length structure)
)

(define (left-branch bitree)
    (car bitree)
)
(define (right-branch bitree)
    (car (cdr bitree))
)
(display
    (make-mobile (list 1 3 4) (make-mobile (list 1 2 3) (list 4 5 6)))
)
