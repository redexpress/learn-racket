#lang racket
(define (handle in out)
  (regexp-match #rx"(\r\n|^)\r\n" in)
  (display "HTTP/1.0 200 Okay\r\n" out)
  (display "Server: k\r\nContent-Type: text/html\r\n\r\n" out)
  (display "<html><body>Hello, world!</body></html>" out))

(define (accept-and-handle listener)
  (define-values (in out) (tcp-accept listener))
  (handle in out)
  (close-input-port in)
  (close-output-port out))

(define (accept-and-handle-t listener)
  (define-values (in out) (tcp-accept listener))
  (define t (thread
             (lambda ()
               (handle in out)
               (close-input-port in)
               (close-output-port out))))
  (thread (lambda ()
            (sleep 10)
            (kill-thread t))))

(define (serve port-no)
  (define listener (tcp-listen port-no 5 #t))
  (define (loop) (accept-and-handle-t listener) (loop))
  (loop))

(serve 8080)

