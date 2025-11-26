(define (leaf x) (+ x x))
(define (repeat-leaf n) (if (< n 0) 0 (do (leaf n) (repeat-leaf (sub1 n)))))
(print(repeat-leaf 1000000))