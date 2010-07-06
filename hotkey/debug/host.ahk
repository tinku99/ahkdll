DllPath := "C:\naveen\source\AutoHotkey_H\bin\DebugDll\AutoHotkey.dll"
fx = fx
script = 
(
fx(){
msgbox fx says hello 
}

)
; msgbox % x := adds(A_AhkPath, script)
; %fx%()


OutputDebug, % "Dll Path: " . DllPath

handleLibrary 
  := DllCall("LoadLibrary"
           , "Str", DllPath)

OutputDebug, % "Handle library: " . handleLibrary

handleThread
  := DllCall(DllPath . "\ahkdll"
           , "Str", A_ScriptDir . "\ahkdllissuehelper.ahk"
           , "Str", ""
           , "Str", ""
           , "Cdecl UInt")

OutputDebug, % "Handle thread: " . handleThread

adds(dllpath, script)
Message =
( LTrim
  Press +1 to call ReturnEmptyString
  Press +2 to call ReturnNonEmptyString

  It appears that once ReturnEmptyString has been called once, 
  calling ReturnNonEmptyString leads to crashing...

  DbgView.exe or similar may be handy.
)        
gosub nonempty
; gosub empty

Return

^1::
nonempty:
{
  R1 
    := DllCall(DllPath . "\ahkgetvar"
             , "Str", "bar"
             , "Cdecl Str")
msgbox % R1


  R1 
    := DllCall(DllPath . "\ahkgetvar"
             , "Str", "foo"
             , "Cdecl Str")
msgbox % R1

  R1 
    := DllCall(DllPath . "\ahkFunction"
             , "Str", "ReturnEmptyString"
             , "Cdecl Str")
;   OutputDebug, % "Ran ReturnEmptyString"
  msgbox % R1 . "from func"

  R2
    := DllCall(DllPath . "\ahkFunction"
             , "Str", "ReturnNonEmptyString"
             , "Cdecl Str")
  msgbox % R2 . "from nonempty"


  Return
}

^2::
empty:
{
DllCall(DllPath . "\ahkPostFunction"
             , "Str", "fx"
             , "Cdecl uint")
  ; OutputDebug, % "Ran ReturnNonEmptyString"

  R2
    := DllCall(DllPath . "\ahkFunction"
             , "Str", "ReturnNonEmptyString"
             , "Cdecl Str")
  msgbox % R2 . "from nonempty"

  Return
}

!r::reload
!q::exitapp

adds(dll, script){
x = addsx 
return DllCall(dll . "\addScript"
             , "Str", script
             , "Cdecl uint")
}
