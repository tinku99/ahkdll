/*
by Naveen Garg
dllhost.ahk
*/
start:
; Msgbox, start debugger and attach to %A_ScriptName%
ahkdll := DllCall("LoadLibrary", "str", A_ScriptDir . "\AutoHotkey.dll")
sleep, 500
threadH := DllCall(A_ScriptDir . "\AutoHotkey.dll\ahkdll", "str", "first.ahk", "str"
, "", "str", "parameter1 parameter2", "Cdecl Int") 
return


F3::
Thread, priority, 99
DllCall(A_ScriptDir . "\AutoHotkey.dll\addFile", "str", "clean.ahk", "uchar", 1
,"uchar" ,1, "Cdecl UInt")
Thread, priority, 0
return

F4::
Thread, priority, 99
DllCall(A_ScriptDir . "\AutoHotkey.dll\addFile", "str", "clean2.ahk", "uchar", 1
,"uchar" ,1, "Cdecl UInt")
Thread, priority, 0
return


F9::
msgbox % "fxclean returned" . DllCall(A_ScriptDir . "\AutoHotkey.dll\ahkFunction", "str", "fxclean"
, "str", "echo1", "str", "echo2", "Cdecl UInt")
msgbox % result . "`nfrom fxclean"
return

F10::
msgbox % DllCall(A_ScriptDir . "\AutoHotkey.dll\ahkLabel", "str", "clean2"
, "Cdecl UInt")
return


!r::
Reload

!q::
ExitApp

