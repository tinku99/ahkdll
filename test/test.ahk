f := func("fx")
msgbox % f.sourceFile " " f.sourceLine
loop, 4{
l := line(A_Index)
msgbox % l.sourceFile " " l.sourceLine " actiontype: " l.actiontype
. "source: " l.source
}
h := Hotkey("f5", 0, 0)
msgbox % h.name
h := Hotkey("f5", 0, 1)
msgbox % h.name
return

fx(){
msgbox fx
}

f5:: 
reload
return
