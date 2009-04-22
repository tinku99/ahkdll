start:
ahkdll := DllCall("LoadLibrary", "str", "AutoHotkey.dll")
DllCall("AutoHotkey\ahkdll", "str", "testFunction.ahk", "str", ""
,"str" , "hello", "Cdecl Int")
return


!q::
DllCall("FreeLibrary", "UInt", ahkdll)
return
