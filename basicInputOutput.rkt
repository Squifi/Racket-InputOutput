#lang racket

(define initialize
  (copy-file "File.txt" "File.tmp"))

(define process
  (let ([temp (file->string "File.tmp")])
    [if [< 0 (string-length temp)]
        (display temp)
        (display "No string in File")]))

(define final-step
  (delete-file "File.tmp"))