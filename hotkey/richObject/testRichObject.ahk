dllpath := A_ScriptDir . "\..\..\bin\DebugDll\AutoHotkey.dll"
DllCall("LoadLibrary","Str", dllpath)
script = 
(%
fx()
Return

fx()
{
MsgBox % A_DllPath . A_Now
}
)
handleThread:=DllCall(dllPath "\ahktextdll","Str", script,"Str",options,"Str",parameters,"Cdecl UInt")

msgbox run second script ? 
scriptFile = %A_ScriptDir%\richobject.ahk
handleThread:=DllCall(dllPath "\ahkdll","Str", scriptFile,"Str"
,options,"Str",parameters,"Cdecl UInt")

return

!r::reload
!q::exitapp 
