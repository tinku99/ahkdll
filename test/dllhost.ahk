ahk := ComObjCreate("AutoHotkey.Script.UNICODE")
oSC := ComObjCreate("ScriptControl")
oSC.Language := "VBScript"

Name  := ComObjType(oSC, "Name")
msgbox % name
s = 
(%
f1::
inputbox, a, a
fileread, file, script.vbs
%a%.ExecuteStatement(file)
return
)
ahk.ahktextdll(s)
sleep, 1000

ahk.ahkassign("oSC", oSC)
ahk.ahkassign("b", 3)
script =
(%
msgbox % ComObjType(oSC, "Name")
listvars
return

)

ahk.ahkexec(script)
msgbox 
return


!r::reload
!q::exitapp

