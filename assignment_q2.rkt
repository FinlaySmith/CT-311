#lang racket

(provide ins_beg)
(provide ins_end)
(provide cout_top_level)
(provide count_instances)
(provide count_instances_tr)
(provide count_instances_deep)

 (define (ins_beg el lst)
   (display "Hello, I'm ins_beg!\n")
   (cons el lst)
 )

 (define (ins_end el lst)
   (append lst (list el))
 )

(define (cout_top_level lst)
    (if (null? lst)
       0
       (+ 1 (cout_top_level (cdr lst)))
  ))

(define (count_instances lst el)
      (cond ((null? lst) 0)
       ((= (car lst) el)
          (+ 1 (count_instances (cdr lst) el)))
          (else (count_instances (cdr lst) el)))
  )

(define (count_instances_tr lst el )
    (cond ((null? lst)  0)
       [(equal? el (car lst)) (+ 1 (count_instances_tr el (cdr lst)))]
           [else (count_instances_tr el(cdr lst)) ])
 )

(define (count_instances_deep el lst)
  (cond [(empty? lst) 0]
       [(equal? el (car lst))
          (+ 1 (count_instances_deep el (cdr lst)))]
              [(list? (car lst)) (+ (count_instances_deep el (car lst))
                   (count_instances_deep el (cdr lst)))]
          [else (count_instances_deep el (cdr lst))]))