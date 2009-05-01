/*
by Naveen Garg
*/
gosub start
return

F1::
start:
ahkdll := DllCall("LoadLibrary", "str", "AutoHotkey.dll")
sleep, 500
threadH := DllCall("AutoHotkey\ahkdll", "str", "dllclient.ahk", "str"
, "", "str", "parameter1 parameter2", "Cdecl Int")
return

!r::
Reload
