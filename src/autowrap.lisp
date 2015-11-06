(in-package :termbox.ffi)

(autowrap:c-include '(cl-termbox autospec "termbox.h")
  :spec-path '(cl-termbox autospec)
  :exclude-arch ("i686-pc-windows-msvc" "x86_64-pc-windows-msvc"))


