LowLevel_init()
return

test(x)
{
msgbox % x
}

F1::
x = default
b = hi naveen
dynamicFunction = dynamic
%dynamicFunction%(b)
return


F2::
func := __findFunc("dynamic")
oldline := NumGet(func+4)
NumPut(newline, func+4)  ; func_JumpToLine := 
; NumPut(oldline, newline+20)  ; func_JumpToLine := 
return

#Include %A_ScriptDir%
#Include code.ahk
#Include LowLevel.ahk
