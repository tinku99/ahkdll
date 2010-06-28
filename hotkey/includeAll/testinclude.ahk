dllpath := A_ScriptDir . "\..\..\bin\DebugDll\AutoHotkey.dll"
DllCall("LoadLibrary","Str", dllpath)
script = %A_ScriptDir%\includeall.ahk
handleThread:=DllCall(dllPath "\ahkdll","str", script,"str"
,options,"str",parameters,"Cdecl UInt")
return

!r::reload
!q::exitapp
