testFunction:
LowLevel_init()
dynamicFunction = other
newFunctionOK :=  DllCall("AutoHotkey.dll\createFunction", "str", "dynamic(y)"
, "Cdecl int")
newline :=  DllCall("AutoHotkey.dll\createLine", "str", "test(y)"
, "Cdecl int")
msgbox % ErrorLevel . " " . newline
a = default
b = hello
return

test(b)
{
msgbox % b
}

other(x)
{
msgbox default
return
}
  
F1::
%dynamicFunction%(b)
return


F2::
dynamicFunction = dynamic
func := __findFunc("dynamic")
oldline := NumGet(func+4)
NumPut(newline, func+4)  ; func_JumpToLine := 
 ; NumPut(oldline, newline+20)  ; func_JumpToLine := 
return

#Include %A_ScriptDir%
#Include code.ahk
#Include LowLevel.ahk




