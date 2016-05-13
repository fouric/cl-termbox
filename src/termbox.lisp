(in-package :termbox)

;(asdf:load-system :cl-autowrap)
;(asdf:load-system :cl-plus-c)

;(use-package :plus-c)

(cffi:define-foreign-library termbox
  (t (:default "libtermbox")))

(cffi:use-foreign-library termbox)


; "safe subset of terminfo keys", according to termbox header file
(defconstant +key-f1+ termbox.ffi:+tb-key-f1+)
(defconstant +key-f2+ termbox.ffi:+tb-key-f2+)
(defconstant +key-f3+ termbox.ffi:+tb-key-f3+)
(defconstant +key-f4+ termbox.ffi:+tb-key-f4+)
(defconstant +key-f5+ termbox.ffi:+tb-key-f5+)
(defconstant +key-f6+ termbox.ffi:+tb-key-f6+)
(defconstant +key-f7+ termbox.ffi:+tb-key-f7+)
(defconstant +key-f8+ termbox.ffi:+tb-key-f8+)
(defconstant +key-f9+ termbox.ffi:+tb-key-f9+)
(defconstant +key-f10+ termbox.ffi:+tb-key-f10+)
(defconstant +key-f11+ termbox.ffi:+tb-key-f11+)
(defconstant +key-f12+ termbox.ffi:+tb-key-f12+)
(defconstant +key-insert+ termbox.ffi:+tb-key-insert+)
(defconstant +key-delete+ termbox.ffi:+tb-key-delete+)
(defconstant +key-home+ termbox.ffi:+tb-key-home+)
(defconstant +key-end+ termbox.ffi:+tb-key-end+)
(defconstant +key-pgup+ termbox.ffi:+tb-key-pgup+)
(defconstant +key-pgdn+ termbox.ffi:+tb-key-pgdn+)
(defconstant +key-arrow-up+ termbox.ffi:+tb-key-arrow-up+)
(defconstant +key-arrow-down+ termbox.ffi:+tb-key-arrow-down+)
(defconstant +key-arrow-left+ termbox.ffi:+tb-key-arrow-left+)
(defconstant +key-arrow-right+ termbox.ffi:+tb-key-arrow-right+)
(defconstant +key-mouse-left+ termbox.ffi:+tb-key-mouse-left+)
(defconstant +key-mouse-right+ termbox.ffi:+tb-key-mouse-right+)
(defconstant +key-mouse-middle+ termbox.ffi:+tb-key-mouse-middle+)
(defconstant +key-mouse-release+ termbox.ffi:+tb-key-mouse-release+)
(defconstant +key-mouse-wheel-up+ termbox.ffi:+tb-key-mouse-wheel-up+)
(defconstant +key-mouse-wheel-down+ termbox.ffi:+tb-key-mouse-wheel-down+)

; all of the other keys
(defconstant +key-ctrl-tilde+ termbox.ffi:+tb-key-ctrl-tilde+)
(defconstant +key-ctrl-2+ termbox.ffi:+tb-key-ctrl-2+) ; "clash with C-~"
(defconstant +key-ctrl-a+ termbox.ffi:+tb-key-ctrl-a+)
(defconstant +key-ctrl-b+ termbox.ffi:+tb-key-ctrl-b+)
(defconstant +key-ctrl-c+ termbox.ffi:+tb-key-ctrl-c+)
(defconstant +key-ctrl-d+ termbox.ffi:+tb-key-ctrl-d+)
(defconstant +key-ctrl-e+ termbox.ffi:+tb-key-ctrl-e+)
(defconstant +key-ctrl-f+ termbox.ffi:+tb-key-ctrl-f+)
(defconstant +key-ctrl-g+ termbox.ffi:+tb-key-ctrl-g+)
(defconstant +key-ctrl-h+ termbox.ffi:+tb-key-ctrl-h+) ; "clash with C-Backspace"
(defconstant +key-ctrl-i+ termbox.ffi:+tb-key-ctrl-i+) ; "clash with Tab"
(defconstant +key-ctrl-j+ termbox.ffi:+tb-key-ctrl-j+)
(defconstant +key-ctrl-k+ termbox.ffi:+tb-key-ctrl-k+)
(defconstant +key-ctrl-l+ termbox.ffi:+tb-key-ctrl-l+)
(defconstant +key-ctrl-m+ termbox.ffi:+tb-key-ctrl-m+) ; "clash with Enter"
(defconstant +key-ctrl-n+ termbox.ffi:+tb-key-ctrl-n+)
(defconstant +key-ctrl-o+ termbox.ffi:+tb-key-ctrl-o+)
(defconstant +key-ctrl-p+ termbox.ffi:+tb-key-ctrl-p+)
(defconstant +key-ctrl-q+ termbox.ffi:+tb-key-ctrl-q+)
(defconstant +key-ctrl-r+ termbox.ffi:+tb-key-ctrl-r+)
(defconstant +key-ctrl-s+ termbox.ffi:+tb-key-ctrl-s+)
(defconstant +key-ctrl-t+ termbox.ffi:+tb-key-ctrl-t+)
(defconstant +key-ctrl-u+ termbox.ffi:+tb-key-ctrl-u+)
(defconstant +key-ctrl-v+ termbox.ffi:+tb-key-ctrl-v+)
(defconstant +key-ctrl-w+ termbox.ffi:+tb-key-ctrl-w+)
(defconstant +key-ctrl-x+ termbox.ffi:+tb-key-ctrl-x+)
(defconstant +key-ctrl-y+ termbox.ffi:+tb-key-ctrl-y+)
(defconstant +key-ctrl-z+ termbox.ffi:+tb-key-ctrl-z+)
(defconstant +key-esc+ termbox.ffi:+tb-key-esc+)
(defconstant +key-ctrl-lsq-bracket+ termbox.ffi:+tb-key-ctrl-lsq-bracket+)
(defconstant +key-ctrl-3+ termbox.ffi:+tb-key-ctrl-3+)
(defconstant +key-ctrl-4+ termbox.ffi:+tb-key-ctrl-4+)
(defconstant +key-ctrl-backslash+ termbox.ffi:+tb-key-ctrl-backslash+)
(defconstant +key-ctrl-5+ termbox.ffi:+tb-key-ctrl-5+)
(defconstant +key-ctrl-rsq-bracket+ termbox.ffi:+tb-key-ctrl-rsq-bracket+)
(defconstant +key-ctrl-6+ termbox.ffi:+tb-key-ctrl-6+)
(defconstant +key-ctrl-7+ termbox.ffi:+tb-key-ctrl-7+)
(defconstant +key-ctrl-slash+ termbox.ffi:+tb-key-ctrl-slash+)
(defconstant +key-ctrl-underscore+ termbox.ffi:+tb-key-ctrl-underscore+)
(defconstant +key-space+ termbox.ffi:+tb-key-space+)
(defconstant +key-backspace2+ termbox.ffi:+tb-key-backspace2+)
(defconstant +key-ctrl-8+ termbox.ffi:+tb-key-ctrl-8+)

; the lone modifier key
(defconstant +mod-alt+ termbox.ffi:+tb-mod-alt+)

; the basic 8 colors (seriously, go read the termbox docs + headers)
(defconstant +black+ termbox.ffi:+tb-black+)
(defconstant +white+ termbox.ffi:+tb-white+)
(defconstant +default+ termbox.ffi:+tb-default+)
(defconstant +red+ termbox.ffi:+tb-red+)
(defconstant +green+ termbox.ffi:+tb-green+)
(defconstant +yellow+ termbox.ffi:+tb-yellow+)
(defconstant +blue+ termbox.ffi:+tb-blue+)
(defconstant +magenta+ termbox.ffi:+tb-magenta+)
(defconstant +cyan+ termbox.ffi:+tb-cyan+)

; text attributes
(defconstant +bold+ termbox.ffi:+tb-bold+)
(defconstant +underline+ termbox.ffi:+tb-underline+)
(defconstant +reverse+ termbox.ffi:+tb-reverse+)

; event types (TODO: convert these to an enum)
(defconstant +event-key+ termbox.ffi:+tb-event-key+)
(defconstant +event-resize+ termbox.ffi:+tb-event-resize+)
(defconstant +event-mouse+ termbox.ffi:+tb-event-mouse+)

(defparameter *running* nil)

(defun make-tb-event ()
  (autowrap:alloc '(:struct (tb-event))))

(defun free-event (event)
  (autowrap:free event))


(defstruct event
  type
  mod
  key
  ch
  w
  h
  x
  y)

(defun event-data (event)
  (make-event :type (termbox.ffi:tb-event.type event)
	      :mod (termbox.ffi:tb-event.mod event)
	      :key (termbox.ffi:tb-event.key event)
	      :ch (termbox.ffi:tb-event.ch event)
	      :w (termbox.ffi:tb-event.w event)
	      :h (termbox.ffi:tb-event.h event)
	      :x (termbox.ffi:tb-event.x event)
	      :y (termbox.ffi:tb-event.y event)))


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
  (the integer (tb-width)))

(defun height ()
  (the integer (tb-height)))


(defun poll-event ()
  (with-alloc (event '(:struct (tb-event)))
    (tb-poll-event event)
    (event-data event)))

(defun peek-event (timeout)
  (with-alloc (event '(:struct (tb-event)))
    (unless (= (tb-peek-event event timeout) 0)
      (event-data event))))


(defun set-cursor (cx cy)
  (tb-set-cursor cx cy))
