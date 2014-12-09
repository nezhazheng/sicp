(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest))
	    (cdr rest))))
  (iter initial sequence))

;; fold-left 从右往左收敛，左边先算得值，得放在cons的右边，达到reverse的目的
(define (reverse sequence)
  (fold-left (lambda (x y) (cons y x)) '() sequence))
