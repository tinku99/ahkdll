start:
ahkdll := DllCall("LoadLibrary", "str", "AutoHotkey.dll")
DllCall("AutoHotkey\ahkdll", "str", "testAddFile.ahk", "str", ""
,"str" , "hello", "Cdecl Int")
return


!r::Reload
