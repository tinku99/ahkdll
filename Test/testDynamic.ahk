LowLevel_init()
newline :=  DllCall("AutoHotkey.dll\createLine", "str", "test(b)"
, "Cdecl int")
msgbox % ErrorLevel . " " . newline
a = default
b = hi naveen
func := __findFunc("other")
return

test(b)
{
msgbox % b
}

other(x)
{
msgbox % x
return
}
  
F1::
other(a)
return


F2::
oldline := NumGet(func+4)
NumPut(newline, func+4)  ; func_JumpToLine := 
NumPut(oldline, newline+20)  ; func_JumpToLine := 
return

#Include %A_ScriptDir%
#Include code.ahk
#Include LowLevel.ahk




