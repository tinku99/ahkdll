test:
LowLevel_init()
dynamicFunction = other
return

test(x)
{
msgbox % x
}

load(x)
{
mylabel = mylabel
msgbox, load
}


other()
{
msgbox other
}
  

F1::
x = default
b = hi naveen
%dynamicFunction%(b)
dynamicFunction = second
return

F3::
dynamicFunction = third
%dynamicFunction%()
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
