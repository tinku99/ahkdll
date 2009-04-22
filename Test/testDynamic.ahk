LowLevel_init()
return


test(a)
{
msgbox % a
}

other(y)
{
msgbox other
return
}
  
F1::
x = default
b = hi naveen
dynamicFunction = other ; dynamic
%dynamicFunction%(b)
return


F2::
newline :=  DllCall("AutoHotkey\createLine", "str", "test(y)", "Cdecl int")
func := __findFunc("other")
oldline := NumGet(func+4)
NumPut(newline, func+4)  ; func_JumpToLine := 
NumPut(oldline, newline+20)  ; func_JumpToLine := 
return

F4::
 ; x :=  DllCall("AutoHotkey\ahkgetvar", "str", "x", "Cdecl str")
 ; msgbox % ErrorLevel . " " . x
return

#Include %A_ScriptDir%
#Include code.ahk
#Include LowLevel.ahk
