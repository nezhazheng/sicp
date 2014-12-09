(define (square a) (* a a))

(define (inc a) (+ 1 a))

(define (compose f g x)
  (f (g x)))

(display (compose square inc 4))
