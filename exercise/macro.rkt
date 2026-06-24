#lang racket
(define-syntax-rule (swap x y)
  (let ([temp x])
    (set! x y)
    (set! y temp)))
(define x 3)
(define y 5)

(define-syntax rotate
  (syntax-rules ()
    [(rotate a b) (swap a b)]
    [(rotaate a b c) (begin
                       (swap a b)
                       (swap b c))]))
(define z 7)
(rotate x y z)

