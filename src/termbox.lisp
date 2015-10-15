(in-package :termbox)

(cffi:define-foreign-library termbox
  (t (:default "libtermbox")))

(cffi:use-foreign-library termbox)

(autowrap:c-include "/usr/include/termbox.h"
		    :constant-accessor tb-const)

(defun init ()
  (tb-init))

(defun shutdown ()
  (tb-shutdown))

(defun clear ()
  (tb-clear))

(defun present ()
  (tb-present))

(defun change-cell (x y char fg bg)
  (tb-change-cell x y char fg bg))

(defun width ()
  (tb-width))

(defun height ()
  (tb-height))

(defun peek-event (event timeout)
  (tb-peek-event event timeout))

(defun poll-event (event)
  (tb-poll-event event))

(defun const (str)
  (tb-const str))

(defun test ()
  (init)
  (clear)
  (change-cell 0 0 (char-code #\#) (const "TB_WHITE") 0)
  (present)
  (plus-c:c-let ((event termbox:tb-event :free t))
    (poll-event event))
  (sleep 2)
  (shutdown))
