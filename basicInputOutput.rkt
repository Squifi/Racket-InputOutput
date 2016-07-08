#lang racket

(define initialize
  (copy-file "File.txt" "File.tmp"))

(define (replace-assert t)
  (display (regexp-replace* #rx"assert" t "Assert."))
  (display (regexp-replace* #rx"!= null" t "notNull(")))

(define process
  (let ([temp (file->string "File.tmp")])
    [if [< 0 (string-length temp)]
        (replace-assert temp)
        (display "No string in File")]))



(define final-step
  (delete-file "File.tmp"))