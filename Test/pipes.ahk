; type testC.ahk | autohotkey pipes.ahk 2> error.txt
DllCall("AttachConsole", "int", -1)
FileReadLine, in1, stdin, 1
FileReadLine, in2, stdin, 1
FileReadLine, in3, stdin, 1
msgbox
FileAppend, Goodbye`, World!, stderr
Fileread, errors, out.txt
listvars

