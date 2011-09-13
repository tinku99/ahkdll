f := func("fx")
msgbox % f.sourceFile " " f.sourceLine
loop, 4{
l := line(A_Index)
msgbox % l.sourceFile " " l.sourceLine " actiontype: " l.actiontype
. "source: " l.source
}
return

fx(){
msgbox fx
}
