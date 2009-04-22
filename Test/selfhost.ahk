; dllhost.ahk
/*
by Naveen Garg
for testing for ahkdll

can be replaced by any ahk script

should probably move the
 "sleep, 1000" 
into the dll, so its lets prone to error

*/
start:
ahkdll := DllCall("LoadLibrary", "str", "AutoHotkey.dll")
DllCall("AutoHotkey\ahkdll", "str", "dllself.ahk", "str"
, "argv1 argv2 argv3 ...", "Cdecl Int")
sleep, 1000
return

F1::
Msgbox % "from dll: " . dllvar := DllCall("AutoHotkey\ahkgetvar", "str", "ahkvar"
, "Cdecl str") . "`n try F2 , a hotkey in the dll script"
return


!q::
DllCall("FreeLibrary", "UInt", ahkdll)
return
