import:
Hotkey, F2, quit, On
x = import2

Import("newscript2.ahk", 1, 2)
suspend
suspend
goto %x%
return

quit:
traytip, f2, f2
return


label11:
msgbox label1
return

file2:
x := "fourth"
x = label5
x = fifth
return

F4::
msgbox f4
NewScript()
return
