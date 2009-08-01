; type pipes.ahk | pipes.exe 2> error.txt
DllCall("AttachConsole", "int", -1)
FileReadLine, in1, stdin, 1
FileReadLine, in2, stdin, 1
FileReadLine, in3, stdin, 1
listvars
msgbox % in1 . "`n" . in2 . "`n" . in3
FileAppend, Goodbye`, World!, stderr



