(defpackage :termbox.ffi
  (:use))

(defpackage :termbox
  (:use #:cl #:autowrap.minimal #:plus-c #:termbox.ffi)
  (:export
    #:init #:shutdown
    #:clear #:present
    #:change-cell #:put-cell
    #:width #:height
    #:peek-event #:poll-event
    #:set-cursor

    #:const

    #:test
    #:tb-white
))
