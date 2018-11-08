#lang racket

(require (file "assignment_q2.rkt")
         (file "assignment_q3.rkt"))

;This structure allows a single function call
;to run every test in sequence, rather than
;calling each function separately. 
(define (runTests)
  (begin
    (display "Running tests...\n")
    ;begin calling test functions
    (printf "1: ~a\n" (test_ins_beg1))
    (printf "2: ~a\n" (test_ins_end1))
    (printf "3: ~a\n" (test_cout_top_level))
     (printf "4: ~a\n" (test_count_instances))
     (printf "5: ~a\n" (test_count_instances_tr))
     (printf "6: ~a\n" (test_count_instances_deep))
     
    ;end calling test functions
    (display "\nTests complete!\n")))

;Begin test functions

(define (test_ins_beg1)
  (equal? (ins_beg 1 '(2 3 4)) '(1 2 3 4))) ;checks if the inserted el makes the list equal to the list: 1 2 3 4 (should be true)

(define (test_ins_end1)
  (equal? (ins_end 3 '(2 3 4)) '(2 3 4 3))) ;checks if the inserted el at the end is the same as the list: 2 3 4 3 (should be true)

(define (test_cout_top_level)
  (eq? (cout_top_level '(3 4 5)) 1)) ;counts the number of els in the top level which should be 3/ (true)

(define (test_count_instances)
  (eq? (count_instances '(3 3 4 5) 3) 1)) ; counts appearances of the number 3, which should be 2 / (true)

(define (test_count_instances_tr)
  (eq? (count_instances '(3 3 4 5) 3) 2)) ;same as above function

(define (test_count_instances_deep)
  (eq?  (count_instances_deep 3 '(3 3 4 5) ) 1)) ;should only have 2 instances of 3 / (true)

;End test functions

;Run the tests
(runTests)