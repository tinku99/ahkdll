; storeHotkey.ahk
 ;files := "E:\naveen\bin\ahk\hotkey\common\*.ahk"
 ; files := "E:\naveen\bin\ahk\hotkey\*.ahk"
   files := "E:\naveen\examples\wikipedia\*.html"
;; testHotkeyIndex:
testHotkeyIndex:
#NoEnv
SetBatchLines -1
ListLines Off
indexed := index(files)
testFind()
; msgbox % allfiles
writetime := index_write(allwords, allfiles, 1)
msgbox % indexed . "`nwritten in " . writetime . " seconds"
return

;; testFind()
testFind()
{
local list, looptest
if !(files = "E:\naveen\bin\ahk\hotkey\common\*.ahk")
return
Index_find("loop", list)
 ; looptest := "6`n2`n2`n2`n1`n"   ; verfied occurence of loop in files
 looptest := "2`n1`n1`n1`n1`n"   ; verfied occurence of loop in files
 ;  looptest := "2`n1`n1`n1`n1`n"   ; verify occurence of naveen in
 ;  common ahk files by hand 
  if !(list == looptest)
    msgbox failed
  else
    TrayTip, passed, passed
  sleep, 1000
  TrayTip
  return
}
;; User Interface
f7::
loopfind:
loop
{
    inputbox, word, find word
    msgbox % Index_find(word, list)
}
return

F8::Reload
^q::ExitApp

;; benchmarks
 ; 1000 files in hotkey in 1 seconds, repeat in 5 seconds
 ; wiki 6000 index in 140 seconds, write index to disk in additional 90 seconds
 
;; Includes
#Include Index.ahk
