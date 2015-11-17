(defpackage :termbox.ffi
  (:use))

(defpackage :termbox
  (:use #:cl #:autowrap.minimal #:plus-c #:termbox.ffi)
  (:export
   ; check the individual function/constant/whatever docs to understand what these are; i don't want to repeat myself
    #:init #:shutdown
    #:clear #:present
    #:change-cell #:put-cell
    #:width #:height
    #:peek-event #:poll-event
    #:set-cursor

    #:+key-f1+ #:+key-f2+ #:+key-f3+ #:+key-f4+ #:+key-f5+ #:+key-f6+ #:+key-f7+ #:+key-f8+ #:+key-f9+ #:+key-f10+ #:+key-f11+ #:+key-f12+ 
    #:+key-insert+ #:+key-delete+ #:+key-home+ #:+key-end+ #:+key-pgup+ #:+key-pgdn+ 
    #:+key-arrow-up+ #:+key-arrow-down+ #:+key-arrow-left+ #:+key-arrow-right+ 
    #:+key-mouse-left+ #:+key-mouse-right+ #:+key-mouse-middle+ #:+key-mouse-release+ 
    #:+key-mouse-wheel-up+ #:+key-mouse-wheel-down+ 

    #:+key-ctrl-tilde+ #:+key-ctrl-2+ #:+key-ctrl-a+ #:+key-ctrl-b+ #:+key-ctrl-c+ #:+key-ctrl-d+ 
    #:+key-ctrl-e+ #:+key-ctrl-f+ #:+key-ctrl-g+ #:+key-backspace+ #:+key-ctrl-h+ #:+key-tab+ 
    #:+key-ctrl-i+ #:+key-ctrl-j+ #:+key-ctrl-k+ #:+key-ctrl-l+ #:+key-enter+ #:+key-ctrl-m+ 
    #:+key-ctrl-n+ #:+key-ctrl-o+ #:+key-ctrl-p+ #:+key-ctrl-q+ #:+key-ctrl-r+ #:+key-ctrl-s+ 
    #:+key-ctrl-t+ #:+key-ctrl-u+ #:+key-ctrl-v+ #:+key-ctrl-w+ #:+key-ctrl-x+ #:+key-ctrl-y+ 
    #:+key-ctrl-z+ #:+key-esc+ #:+key-ctrl-lsq-bracket+ #:+key-ctrl-3+ #:+key-ctrl-4+ #:+key-ctrl-backslash+ 
    #:+key-ctrl-5+ #:+key-ctrl-rsq-bracket+ #:+key-ctrl-6+ #:+key-ctrl-7+ #:+key-ctrl-slash+ #:+key-ctrl-underscore+ 
    #:+key-space+ #:+key-backspace2+ #:+key-ctrl-8+ 

    #:+mod-alt+

    #:+black+ #:+white+ #:+default+ #:+red+ #:+green+ #:+yellow+ #:+blue+ #:+magenta+ #:+cyan+ 

    #:+bold+ #:+underline+ #:+reverse+

    #:+event-key+ #:+event-resize+ #:+event-mouse+
))
