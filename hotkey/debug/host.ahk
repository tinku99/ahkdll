DllPath := "C:\naveen\source\AutoHotkey_H\bin\DebugDll\AutoHotkey.dll"

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

Message =
( LTrim
  Press +1 to call ReturnEmptyString
  Press +2 to call ReturnNonEmptyString

  It appears that once ReturnEmptyString has been called once, 
  calling ReturnNonEmptyString leads to crashing...

  DbgView.exe or similar may be handy.
)        
gosub nonempty
gosub empty

Return

^1::
nonempty:
{
  R1 
    := DllCall(DllPath . "\ahkFunction"
             , "Str", "ReturnEmptyString"
             , "Cdecl Str")
;   OutputDebug, % "Ran ReturnEmptyString"
  ; msgbox % R1 . "from empty"
  R1 
    := DllCall(DllPath . "\ahkgetvar"
             , "Str", "foo"
             , "Cdecl Str")
msgbox % R1
  R1 
    := DllCall(DllPath . "\ahkgetvar"
             , "Str", "bar"
             , "Cdecl Str")
msgbox % R1
  Return
}

^2::
empty:
{
  R2
    := DllCall(DllPath . "\ahkFunction"
             , "Str", "ReturnNonEmptyString"
             , "Cdecl Str")
  ; OutputDebug, % "Ran ReturnNonEmptyString"
  msgbox % R2 . "from nonempty"
  Return
}

!r::reload
!q::exitapp
