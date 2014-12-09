(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
	(accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate (lambda (x y) (+ x y)) 0 (map 
				  (lambda (sub)
				    (if (pair? sub)
				      (count-leaves sub)
				      1)) t)))
