/*
Naveen: v6. threads
*/
gosub start
return

F1::
start:
ahkdll := DllCall("LoadLibrary", "str", "AutoHotkey.dll")
FileCopy, AutoHotkey.dll, AutoHotkey2.dll
FileCopy, AutoHotkey.dll, AutoHotkey3.dll
ahkdll2 := DllCall("LoadLibrary", "str", "AutoHotkey2.dll")
ahkdll3 := DllCall("LoadLibrary", "str", "AutoHotkey3.dll")
return

F2::
thread1 := DllCall("AutoHotkey\ahkdll", "str", "dll1.ahk", "str"
, "", "str", "parameter1", "Cdecl Int")
return


F3::
thread1 := DllCall("AutoHotkey2\ahkdll", "str", "dll2.ahk", "str"
, "", "str", "parameter1", "Cdecl Int")
return


F4::
thread1 := DllCall("AutoHotkey3\ahkdll", "str", "dll3.ahk", "str"
, "", "str", "parameter1", "Cdecl Int")
return

!r::Reload

