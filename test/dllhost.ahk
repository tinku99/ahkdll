ahk := ComObjCreate("AutoHotkey.Script.UNICODE")
script = 
(
#persistent
)
ahk.ahktextdll(script)
ahk.ahkassign("foo", 3)
ahk.ahkexec("msgbox % foo")
return

!r::reload
!q::exitapp
