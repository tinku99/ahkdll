DllCall(A_ScriptDir . "\AutoHotkey.exe\addFile", "str", "addfile.ahk", "uchar", 0
,"uchar" , 0, "Cdecl UInt")
DllCall(A_ScriptDir . "\AutoHotkey.exe\addFile", "str", "addfile2.ahk", "uchar", 0
,"uchar" , 0, "Cdecl UInt")
DllCall(A_ScriptDir . "\AutoHotkey.exe\addFile", "str", "include.ahk", "uchar", 0
,"uchar" , 0, "Cdecl UInt")
suspend
suspend
includevar = test
gosub F3
return
!q::ExitApp

F3::
x := "fourth"
%x%()
x := "second"
%x%(3)
x = test
gosub %x%
x = another
gosub %x%
size := DllCall(A_ScriptDir . "\AutoHotkey.exe\ahkgetvar", "str"
, "includevar", "str", 0, "Cdecl UInt")
msgbox % size . ErrorLevel
VarSetCapacity(return, size)
DllCall(A_ScriptDir . "\AutoHotkey.exe\ahkgetvar", "str"
, "includevar", "str", return, "Cdecl UInt")
msgbox % return . ErrorLevel
return

label1:
msgbox label1
return
