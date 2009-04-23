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


F2::
newFunctionOK :=  DllCall("AutoHotkey.dll\createFunction", "str", "dynamic(d)"
, "Cdecl int")

dynamicFunction = dynamic
func := __findFunc("dynamic")
oldline := NumGet(func+4)
NumPut(newline, func+4)  ; func_JumpToLine := 
 ; NumPut(oldline, newline+20)  ; func_JumpToLine := 
return

#Include %A_ScriptDir%
#Include code.ahk
#Include LowLevel.ahk




