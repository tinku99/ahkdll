
#NoEnv
#Persistent

; Msgbox, % "-------"

; Msgbox, % "A_AhkVersion: " . A_AhkVersion

ahkDllPath := "C:\naveen\source\AutoHotkey_H\bin\DebugDll\AutoHotkey.dll"

; Msgbox, % "About to call LoadLibrary"
handleLibrary 
  := DllCall("LoadLibrary"
           , "Str", AHKDllPath)
If (ErrorLevel != 0)
{
  Msgbox, % "DllCall (LoadLibrary) set ErrorLevel to: " . ErrorLevel
  ExitApp
}
; Msgbox, % "DLLCall (LoadLibrary) returned: " . handleLibrary

; Msgbox, % "About to call ahkdll"
Result
  := DllCall(AHKDllPath . "\ahkdll"
           , "Str", A_ScriptDir . "\helper.ahk"
           , "Str", ""
           , "Str", ""
           , "Cdecl UInt")
If (ErrorLevel != 0)
{
  Msgbox, % "DllCall (ahkdll) set ErrorLevel to: " . ErrorLevel
  ExitApp
}
Msgbox, % "DllCall (ahkdll) returned: " . Result

Parameter := "Hoping this comes back"
Msgbox, % "About to call ahkFunction"
Result
  := DllCall(AHKDllPath . "\ahkFunction"
           , "Str", "InHelper"
           , "Str", Parameter
           , "Cdecl Str")
If (ErrorLevel != 0)
{
  Msgbox, % "DllCall (ahkFunction) set ErrorLevel to: " . ErrorLevel
}
Msgbox, % "DllCall (ahkFunction) returned: " . Result
If (Result == "")
{
  Msgbox, % "  Result appears to be empty..."
}

Msgbox, % "About to call FreeLibrary"
Result
  := DllCall("FreeLibrary"
           , "UInt", handleLibrary)
If (ErrorLevel != 0)
{
  Msgbox, % "DllCall (FreeLibrary) set ErrorLevel to: " . ErrorLevel
  ExitApp
}
Msgbox, % "DllCall (FreeLibrary) returned: " . Result

ExitApp
