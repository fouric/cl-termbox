# cl-termbox
A Common Lisp wrapper around nsf/termbox (dead-simple curses-like terminal control)

Introduction
------------

Termbox (https://github.com/nsf/termbox) is a ncurses-like library that allows for control over terminals a la top and vim. cl-termbox is a thin Common Lisp wrapper around Termbox, made with cl-autowrap (https://github.com/rpav/cl-autowrap).

Instructions
------------

Install Termbox (you should really read the actual Termbox instructions):

    git clone https://github.com/nsf/termbox.git
    cd termbox
    ./waf configure --prefix=/usr
    ./waf
    sudo ./waf install --destdir=/

Clone the repository:

    git clone https://github.com/fouric/cl-termbox.git ~/quicklisp/local-projects/cl-termbox

Load using ASDF:

    (asdf:load-system :cl-termbox)

Use modified versions of the Termbox C function names (put this in a file/function; termbox messes with terminal i/o):

    (termbox:init)	; tb_init in c
    (termbox:clear)	; tb_clear in c
    (termbox:change-cell 0 0 (char-code #\#) termbox:+white+ 0) ; tb_change_cell in c
    (termbox:present)	; I think you get the point
    (sleep 2)
    (termbox:shutdown)

Better documentation to come. Pull requests, bug reports (and fixes, please :), feedback, and documentation welcome.
