Import("addfile.ahk")
suspend  ; required to activate hotkey in imported file
suspend
gosub file1
Import("addfile2.ahk", 0, 2)
suspend  ; required to activate hotkey in imported file
suspend
gosub file2
gosub file1


!q::ExitApp
!r::Reload

label1:
msgbox label1
return


file1:
x := "second"
%x%(3)
x = test
gosub %x%
x = another
gosub %x%
return


file2:
x := "fourth"
%x%()
x = label5
gosub %x%
x = fifth
%x%()
return
