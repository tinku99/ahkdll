import2:
Hotkey, F2, quit2, On
Import("importStress.ahk", 1, 2)
suspend
suspend
x = import
goto %x%
return

label1:
msgbox label1
return

quit2:
traytip, f3, f3
return

file1:
x := "second"
x = test
x = another
return


