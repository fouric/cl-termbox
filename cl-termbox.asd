(defpackage :cl-termbox.asdf
  (:use #:cl #:asdf))

(in-package :cl-termbox.asdf)

(defsystem :cl-termbox
  :description "Termbox wrapper for CL"
  :author "fouric"
  :license "BSD-2-Clause"
  :version "0.0"

  :depends-on (:cl-autowrap :cl-plus-c :trivial-garbage)
  :pathname "src"
  :serial t

  :components
  ((:file "package")
   (:file "autowrap")
   (:file "termbox")
   (:file "tb"
	  :depends-on ("termbox"))
   (:module #:autospec
	    :pathname "autospec"
	    :components
	    ((:static-file "termbox.h")))))
