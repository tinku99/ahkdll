/*
by Naveen Garg
dllhost.ahk
*/
start:
ahkdll := DllCall("LoadLibrary", "str", A_ScriptDir . "\AutoHotkey.dll")
sleep, 500
threadH := DllCall(A_ScriptDir . "\AutoHotkey.dll\ahkdll", "str", "cleanhostdll.ahk", "str"
, "", "str", "parameter1 parameter2", "Cdecl Int") 
DllCall(A_ScriptDir . "\AutoHotkey.dll\addFile", "str", "clean.ahk", "uchar", 1
,"uchar" , 2, "Cdecl UInt")
msgbox hostcleanexe
return


F4::
DllCall(A_ScriptDir . "\AutoHotkey.dll\addFile", "str", "clean.ahk", "uchar", 1
,"uchar" , 2, "Cdecl UInt")
msgbox hostcleanexe
return


!r::
Reload

!q::
ExitApp

