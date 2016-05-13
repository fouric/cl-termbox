(in-package :tb)

(declaim (optimize (debug 3)))

(cl:use-package :cl)
(cl:use-package :cl-user)

(define-condition already-running-error (error)
  ())

(define-condition not-running-error (error)
  ())

(define-condition init-failed-error (error)
  ((retcode :initarg :retcode :reader retcode)))

(defparameter *running-p* nil)

(defun running-p ()
  *running-p*)

(defun safe-shutdown ()
  (when *running-p*
    (setf *running-p* nil)
    (termbox:shutdown)))

(defun init ()
  (if *running-p*
      (error 'already-running-error)
      (let ((return-code (termbox:init)))
	(if (minusp return-code)
	    (error 'init-failed-error :retcode return-code)
	    (setf *running-p* t)))))

(defun shutdown ()
  (if *running-p*
      (progn
	(setf *running-p* nil)
	(termbox:shutdown))
      (error 'not-running-error)))

(defun clear ()
  (termbox:clear))

(defun present ()
  (if *running-p*
      (termbox:present)
      (error 'not-running-error)))

(defun change-cell (x y char fg bg)
  (check-type x (integer -1 *) "a nonzero integer")
  (check-type y (integer -1 *) "a nonzero integer")
  (check-type char (or (integer -1 *)
		       (standard-char)
		       (string 1)) "some representation of a single character")
  (check-type fg integer "a Termbox color")
  (check-type bg integer "a Termbox color")
  (termbox:change-cell x y char fg bg))

(defun put-cell (x y cell)
  (check-type x integer "an integer")
  (check-type y integer "an integer")
  ;; TODO: find out the type of `cell`
  (termbox:put-cell x y cell))


(defun width ()
  (termbox:width))

(defun height ()
  (termbox:height))


(defun poll-event ()
  (termbox:poll-event))

(defun peek-event (timeout)
  (check-type timeout integer "an integer")
  (termbox:peek-event timeout))

(defun set-cursor (cx cy)
  (check-type cx integer "an integer")
  (check-type cy integer "an integer")
  (tb-set-cursor cx cy))
