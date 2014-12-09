;; 1.32
(define (sum term next a b)
  (define (iter a result)
    (if (> a b) 
      result
      (iter (next a) (+ (term a) result))))
  (iter a 0))

(define (accumulate combiner null-value term a next b) 
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (sum-combiner a result) (+ a result))

(define (sum1 term next a b)
  (accumulate sum-combiner 0 term a next b))
