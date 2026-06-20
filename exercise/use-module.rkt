#lang racket

(require "extract.rkt")

(extract "hello world")
(define ans (+ (/ 1 2) (/ 1 3)))
ans
(exact->inexact ans)
(for/sum ([i (in-range 3 10)])
    (/ 1 i))
(define a2 0)
(for ([i (in-range 3 10)])
  (set! a2 (+ a2 (/ 1 i))))
a2
(define (sum start end)
  (let loop ([i start] [acc 0])
    (if (> i end)
        acc
        (loop (add1 i)
              (+ acc (/ 1 i))))))
(sum 3 9)

(apply + (for/list ([i (in-range 3 10)]) (/ 1 i)))
(apply + '(3 4 5))
(apply + (list 3 4 5))
(expt 2 999)
(sqrt -1)
