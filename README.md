# cl-termbox
A thin Common Lisp wrapper around nsf/termbox (dead-simple curses-like terminal control)

Introduction
------------

Termbox (https://github.com/nsf/termbox) is a ncurses-like library that allows for control over terminals a la top and vim. cl-termbox is a thin Common Lisp wrapper around Termbox, made with cl-autowrap (https://github.com/rpav/cl-autowrap).

Disclaimer
----------

Although Termbox itself is relatively stable, cl-termbox is still undergoing API changes as I get things fleshed out. If you want to build any stable application with cl-termbox, then I recommend waiting a few weeks until the API is a bit more stable. Additionally, this wrapper is very thin; if you want something with Lispy exceptions and type conversion, then you might want to check out the `tb` package of [cl-termbox-extras](https://github.com/fouric/cl-termbox-extras).

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

Functions
---------

    (termbox:running-p)

Check to see if Termbox is running.

    (termbox:init)

Initialize Termbox. This takes control of the current terminal in an ncurses-like style, so (1) it's much more difficult to extract debug information and (2) this can't be used from within Emacs with SLIME. This can be called twice without crashing the program, although it will cause wierd effects, so it is not recommended.

    (termbox:shutdown)

Close Termbox and restore the terminal to its standard state. This will generally cause things to crash if it is called twice or without Termbox having been initialized.

    (termbox:clear)

Clear the internal back buffer. This will not clear the screen until (termbox:present) is called.

    (termbox:present)

Synchonize the contents of the screen with the internal back buffer.

    (termbox:change-cell x y char &optional fg bg)

Blit a character to the internal back buffer. `x` and `y` are the x and y locations of the cell to change, with (0, 0) being the upper-left corner of the terminal. `char` is the (char-code) of said character. `fg` and `bg` are the foreground and background colors, respectively, to set the cell to.

    (termbox:width)

Get the width of the terminal window (in cells).

    (termbox:height)

Get the height of the terminal window (also in cells).

    (termbox:poll-event)

Block forever until an event occurs, then pop it off the internal event queue and return it.

    (termbox:peek-event timeout)

Wait `timeout` milliseconds or until an event occurs, then pop it off the internal event queue and return it. Returns `nil` if an event failed to occur and the event otherwise.

Better documentation to come. Pull requests, bug reports (and fixes, please :), feedback, and documentation welcome.
