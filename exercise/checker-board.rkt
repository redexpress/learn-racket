#lang slideshow
(define sz 20)
(define c1 "red")
(define c2 "black")

(define (checker p1 p2)
  (let ([p12 (hc-append p1 p2)]
        [p21 (hc-append p2 p1)])
    (vc-append p12 p21)))

(define (square n) (filled-rectangle n n))

(checker (colorize (square sz) c1)
         (colorize (square sz) c2))

(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))

(define (checkerboard p)
  (let* ([rp (colorize p c1)]
         [bp (colorize p c2)]
         [c (checker rp bp)]
         [c4 (four c)])
    (four c4)))
 
(checkerboard (square 20))



