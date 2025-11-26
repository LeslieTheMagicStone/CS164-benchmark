(define (f) (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 (add1 0)))))))))))))))))))
(define (repeat-f n) (if (< n 0) 0 (do (f) (repeat-f (sub1 n)))))
(print(repeat-f 1000000))
