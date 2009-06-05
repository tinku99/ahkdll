Import("addfile.ahk")
suspend  ; required to activate hotkey in imported file
suspend
x := "second"
%x%(3)
x = test
gosub %x%
x = another
gosub %x%
return

!q::ExitApp
!r::Reload

label1:
msgbox label1
return
