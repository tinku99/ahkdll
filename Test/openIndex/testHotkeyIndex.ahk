files := "E:\naveen\hotkey\*.ahk"

testHotkeyIndex:
#NoEnv
SetBatchLines -1
ListLines Off
msgbox % index(files) . "`n"
. "finding naveen...`n" . Index_find("naveen")
gosub loopfind
return
f7::
loopfind:
loop
gosub find
return
F8::Reload
^q::ExitApp

F9::
inputbox file, file
file = E:\naveen\bin\ahk\hotkey\common\%file%
; termFrequency("naveen", file, filename ) 
return
; 275 files in hotkey in 9 seconds, repeat in 5 seconds
