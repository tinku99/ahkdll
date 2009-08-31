DllCall("AutoHotkey.exe\addFile", "str", "lateadded.ahk", "uchar",
0,"uchar" , 0, "Cdecl UInt")
; import("addfile.ahk")
return
!q::ExitApp

F3::
x := "added"
%x%()
return
