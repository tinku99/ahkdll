#Persistent
DllCall("AutoHotkey.dll\addFile", "str", "addfile.ahk", "Cdecl UInt")
return


F2::
x = test
gosub %x%
return
