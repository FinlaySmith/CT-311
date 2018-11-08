#lang racket

;Cons are a joining of elements to form a pair, 1 and 2 joined 
(cons 1 2)
(cons 1 (cons 2 (cons 3 empty)))
(cons "sample" (cons 2 (cons (cons 3(cons 2(cons 4 empty))) empty)))
;Lists are made up up literal values, e.g 5,8,4
(list "list" 4 (list 5 8 4))
;Appending just returns a concatenation of lists
(append '("test") '(2) '((3 2 2)))

;outputs below are as expected