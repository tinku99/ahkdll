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
msgbox, Please make sure DebugClient is on before proceeding
threadH := DllCall("AutoHotkey\ahkdll", "str", "dllclient.ahk", "str"
, "/Debug", "str", "", "Cdecl Int")
return

!q::
DllCall("FreeLibrary", "UInt", ahkdll)
return

!c::
DllCall("AutoHotkey\ahkclose", "int", threadH, "Cdecl int")
return
