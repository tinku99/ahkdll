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
gosub stress
return

stress:
loop, 2
{
loop, 1000
{
DllCall(A_ScriptDir . "\AutoHotkey.dll\addFile", "str", "clean.ahk", "uchar", 1
,"uchar" , 2, "Cdecl UInt")
DllCall(A_ScriptDir . "\AutoHotkey.dll\addFile", "str", "clean2.ahk", "uchar", 1
,"uchar" , 2, "Cdecl UInt")
}
msgbox 1000  
}
  return

F3::
DllCall(A_ScriptDir . "\AutoHotkey.dll\addFile", "str", "clean.ahk", "uchar", 1
,"uchar" , 2, "Cdecl UInt")
msgbox hostcleanexe clean
return

F4::
DllCall(A_ScriptDir . "\AutoHotkey.dll\addFile", "str", "clean2.ahk", "uchar", 1
,"uchar" , 2, "Cdecl UInt")
msgbox hostcleanexe clean2
return

!r::
Reload

!q::
ExitApp
