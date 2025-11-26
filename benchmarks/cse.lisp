(define (f x y) (do (+ (- x y) (add1 (+ x y))) (+ (- x y) (add1 (+ x y))) (+ (- x y) (add1 (+ x y))) (+ (- x y) (add1 (+ x y)))))
(define (repeat-f n) (if (< n 0) 0 (do (f n (sub1 n)) (repeat-f (sub1 n)))))
(print(repeat-f 500000))