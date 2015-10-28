# cl-termbox
A Common Lisp wrapper around nsf/termbox

Instructions
------------

Install Termbox:

    git clone https://github.com/nsf/termbox.git
    cd termbox
    ...
    sudo python3 setup.py install

Install cl-termbox using Quicklisp (http://www.quicklisp.org/beta/):

    (ql:quickload :cl-termbox)

Load using ASDF:

    (asdf:load-system :cl-termbox)

Use modified versions of the Termbox C function names:

    (termbox:init)	; tb_init in c
    (termbox:clear)	; tb_clear in c
    (termbox:change-cell 0 0 (char-code #\#) (tb-const "TB_WHITE") 0) ; tb_change_cell in c; use tb-const for constants
    (termbox:present)	; I think you get the point
    (sleep 2)
    (termbox:shutdown)

More/clearer instruction to come. Pull requests, bug reports (and fixes, please :), feedback, and documentation welcome.
