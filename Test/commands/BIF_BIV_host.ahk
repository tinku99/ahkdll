/*
by Naveen Garg
dllhost.ahk
*/
gosub start
return

F1::
start:
ahkdll := DllCall("LoadLibrary", "str", "AutoHotkey.dll")
sleep, 500
threadH := DllCall("AutoHotkey\ahkdll", "str", "exportclient.ahk", "str"
, "", "str", "parameter1 parameter2", "Cdecl Int") 
gosub biv
gosub command
return

!r::
Reload

!q::
ExitApp


F4::
biv:
VarSetCapacity(var, 2000)
x = A_AhkVersion
result := dllcall("AutoHotkey\EBIV_AhkVersion", "str", var
, "str", x, "cdecl Uint")
msgbox % ErrorLevel . " " . result . " " . var
return

F6::
command:
ACT_TOOLTIP = 40
result := dllcall("AutoHotkey\EToolTip", "str", "40"
, "str", "hello"
, "str", "200", "str", "200"
, "str", "1", "cdecl Uint")
; msgbox % ErrorLevel . " " . result
return


