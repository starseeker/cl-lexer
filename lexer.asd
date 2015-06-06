;;; -*- Mode: Lisp; Syntax: ANSI-Common-lisp; Package: CL-USER; Base: 10 -*-

(in-package "CL-USER")

(asdf:defsystem lexer
    :description "cl-lexer: a lexical analyzer generator"
    :version "1.4"
    :author "Kenneth Michael Parker"
    :license "BSD-new"
    :depends-on (regex)
    :components ((:file "packages")
                 (:file "lexer")))

