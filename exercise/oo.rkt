#lang racket
(define fish% (class object%
  (init size)
  (define current-size size)
  (super-new)
  (define/public (get-size)
    current-size)
  (define/public (grow amt)
    (set! current-size (+ amt current-size)))
  (define/public (eat other-fish)
    (grow (send other-fish get-size)))))
(define charlie (new fish% [size 10]))
(send charlie grow 6)
(send charlie get-size)