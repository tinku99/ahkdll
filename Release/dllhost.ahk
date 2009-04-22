/*
by Naveen Garg
*/
gosub start
return

F1::
start:
ahkdll := DllCall("LoadLibrary", "str", "AutoHotkey.dll")
gosub F2
return

F2::
threadH := DllCall("AutoHotkey\ahkdll", "str", "dllclient.ahk", "str"
, "", "str", "parameter1 parameter2", "Cdecl Int")
return

!q::
DllCall("FreeLibrary", "UInt", ahkdll)
return

!c::
DllCall("AutoHotkey\ahkclose", "int", threadH, "Cdecl int")
return
