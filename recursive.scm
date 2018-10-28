(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(define (nfactorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(define (A x y)
  (cond ((= x 0) (+ 1 y))
    ((= y 0) (A (- x 1) 1))
    (else (A (- x 1) (A x (- y 1))))))
