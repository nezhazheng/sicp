(define (square-list items)
  (define (iter answer things)
    (if (null? things)
      answer
      (iter (cons answer (square (car things))) (cdr things))))
  (iter '() items))

(define (square x) (* x x))

(display (square-list (list 2 3 4)))
