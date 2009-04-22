ahkvar = "from dll script"
gosub F4
return

F3::
msgbox % "from host sbclvar =" . argv
return

F4::
x :=  DllCall("AutoHotkey\ahkgetvar", "str", "ahkvar", "Cdecl str")
x :=  DllCall("AutoHotkey\MsgBox", "str", "asd", "Cdecl int")
msgbox % ErrorLevel . " " . x

return
