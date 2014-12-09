(define (f x y z) (cond
		    ((and (>= x y) (>= z y)) (+ x z))
		    ((and (>= y x) (>= z x)) (+ y z))
		    ((and (>= y z) (>= x z)) (+ x y))))

(f 10 5 2)
(f 5 10 10)
