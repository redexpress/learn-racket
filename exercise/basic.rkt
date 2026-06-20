#lang racket
(sqrt 3)
(>= 2 1)
(add1 3)
(if (> 2 3)
    "2 is bigger than 3"
    "2 is smaller than 3")
'('hello 'world)
(list 'hello 'world)
'(hello world)
(define (reply-more s)
  (cond
    [(string-prefix? s "hello ") "hi!"]
    [(string-prefix? s "goodbye ") "bye!"]
    [else "huh?"]))
(reply-more "hello racket")
(define (double v)
  ((if (string? v) string-append +) v v))
(double 3)
(double "hello")
(define (twice f v)(f (f v)))
(twice sqrt 16)
(twice (lambda (s) (string-append s "!")) "Done")

(list-ref (list "one" "two" "three") 0)
(reverse (append (list "one" "two") (list "three" "four")))
(list->string (reverse (string->list "hello")))
(map add1 '(1 2 3))
(foldl + 0 '(1 2 3))
(foldl - 0 '(1 2 3 4)) ;(f d(f c (f b (f a init))))
(foldr - 0 '(1 2 3 4))  ;(f a (f b (f c (f d init))))
(define (foldl-haskell f init lst)
  (if (null? lst)
      init
      (foldl-haskell f (f init (car lst)) (cdr lst))))
(foldl-haskell - 0 '(1 2 3 4))
(define (foldl-h f init lst)
  (foldl (lambda (elem acc) (f acc elem)) init lst))
(foldl-h - 0 '(1 2 3 4))
(car (cons (cons 1 2) 3))
'("r" "g" "b")
(quote ("r" "g" "b"))









