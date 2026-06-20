#lang slideshow
(list "red" "green" "blue")
(list 'r 'g 'b)
(define (rainbow p)
  (map (lambda (color) (colorize p color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))
(define sz 20)
(rainbow (filled-rectangle sz sz))

