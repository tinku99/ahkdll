return

F2::
Import("addfile.ahk", 1, 2)
return

!r::Reload
!q::ExitApp


F3::
x = test
gosub %x%
return

