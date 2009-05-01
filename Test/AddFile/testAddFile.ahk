testFunction:
LowLevel_init()
dynamicFunction = first
newline :=  DllCall("AutoHotkey.dll\addFile", "str", "addfile.ahk"
, "uchar", 0, "uchar", 0, "Cdecl int")
msgbox % ErrorLevel . " " . newline
newline :=  DllCall("AutoHotkey.dll\addFile", "str", "addfile2.ahk"
, "uchar", 0, "uchar", 0, "Cdecl int")
msgbox % ErrorLevel . " " . newline
a = first
gosub f1
gosub f1
gosub f1
gosub f1
gosub f1
return

first(b)
{
global dynamicFunction
msgbox % b
dynamicFunction = second
}

F1::
%dynamicFunction%(a)
return

#Include %A_ScriptDir%\..\LowLevel
#Include code.ahk46
#Include LowLevel.ahk46




