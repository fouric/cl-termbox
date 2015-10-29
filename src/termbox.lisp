(in-package :termbox)

(asdf:load-system :cl-autowrap)
(asdf:load-system :cl-plus-c)
(use-package :plus-c)

(cffi:define-foreign-library termbox
  (t (:default "libtermbox")))

(cffi:use-foreign-library termbox)

; FIXME: the only reason why this is here is because we need tb-const to access constants
(autowrap:c-include "/usr/include/termbox.h" :constant-accessor tb-const)

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

(defun put-cell (x y cell)
  (tb-put-cell x y cell))


(defun width ()
  (tb-width))

(defun height ()
  (tb-height))


(defun peek-event (event timeout)
  (tb-peek-event event timeout))

(defun poll-event (event)
  (tb-poll-event event))


(defun set-cursor (cx cy)
  (tb-set-cursor cx cy))


(defun const (str)
  (tb-const str))

(defun test ()
  (init)
  (clear)
  (change-cell 0 0 (char-code #\#) (tb-const "TB_WHITE") 0)
  (present)
  ;(plus-c:c-let ((event '(:struct (tb-event)) :free t))
  ; (poll-event event))
  (with-alloc (event '(:struct (tb-event)))
    (poll-event event))
  (sleep 2)
  (shutdown))
