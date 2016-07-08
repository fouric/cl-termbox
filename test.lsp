(ql:quickload :cl-termbox)

(defun test ()
  (tb:init)
  (tb:change-cell 1 1 (char-code #\@) termbox:+white+ 0)
  (tb:present)
  (termbox:peek-event -1)
  (tb:shutdown))
(test)
