gosub start
return

F1::
start:
ahkdll := DllCall("LoadLibrary", "str", A_ScriptDir . "\AutoHotkey.dll")
gosub F2
return

F2::
msgbox, Please make sure DebugClient is on before proceeding
threadH := DllCall(A_ScriptDir . "\AutoHotkey.dll\ahkdll", "str", "dllclient.ahk", "str"
, "/Debug", "str", "", "Cdecl Int")
return

!q::ExitApp
!r::Reload
