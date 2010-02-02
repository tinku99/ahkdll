dll:=A_ScriptDir . "\AutoHotkey.dll"
MsgBox % DllCall("LoadLibraryW","WStr",dll)
DllCall(dll . "\ahkdll","WStr", "test.ahk", "WStr", "sdf"
, "WStr", "sdf", "cdecl uint")
MsgBox % ErrorLevel
return


!r::reload
!q::exitapp
