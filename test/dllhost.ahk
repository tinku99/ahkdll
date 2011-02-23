ahk := ComObjCreate("AutoHotkey.Script.UNICODE")
script = 
(
#persistent
)
ahk.ahktextdll(script)
ahk.ahkassign("foo", 3)
ahk.ahkexec("msgbox % foo")
msgbox % bar := ahk.ahkgetvar("foo", 0)
return

!r::reload
!q::exitapp
