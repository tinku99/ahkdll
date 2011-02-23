ahk := ComObjCreate("AutoHotkey.Script.UNICODE")
script = 
(
#persistent
echo(x)
{
return x
}
)
ahk.ahktextdll(script)
ahk.ahkassign("foo", 3)
ahk.ahkexec("msgbox % foo")
msgbox % bar := ahk.ahkgetvar("foo", 0)
arr := ComObjArray(VT_VARIANT:=12, 3)
arr[0] := "Auto"
arr[1] := "Hot"
arr[2] := "key"
ahk.ahkassign("foo", arr)
ahk.ahkexec("msgbox % foo[0]")
bar := ahk.ahkgetvar("foo", 0)
msgbox % bar[1]
msgbox % ahk.ahkFunction("echo", arr)[2]

return

!r::reload
!q::exitapp
