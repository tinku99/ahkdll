/*
by Naveen Garg
dllhost.ahk
*/
gosub start
return

F1::
start:
ahkdll := DllCall("LoadLibrary", "str", A_ScriptDir . "\AutoHotkey.dll")
sleep, 500
threadH := DllCall(A_ScriptDir . "\AutoHotkey.dll\ahkdll", "str", "dllclient.ahk", "str"
, "", "str", "parameter1 parameter2", "Cdecl Int") 
return

!r::
Reload

!q::
ExitApp
