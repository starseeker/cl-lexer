(eval-when (:compile-toplevel :load-toplevel :execute)
  (require :lexer))

(defpackage #:test-lexer
  (:use #:common-lisp #:lexer)
  (:export #:test))

(in-package #:test-lexer)

(deflexer test-lexer
    ("[0-9]+([.][0-9]+([Ee][0-9]+)?)"
     (return (values 'flt (num %0))))
  ("[0-9]+"
   (return (values 'int (int %0))))
  ("[:alpha:][:alnum:]*"
   (return (values 'name %0)))
  ("[:space:]+") )


(defparameter *lex* (test-lexer "1.0 12 fred 10.23e12"))

(defun test ()
  (loop repeat 5
        collect (multiple-value-list (funcall *lex*))))
