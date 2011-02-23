ahk := ComObjCreate("AutoHotkey.Script.UNICODE")
 ; ahk.ahktextdll(script)
 ; FileRead, script, dllclient.ahk
script = 
(%
#persistent
echo(x)
{
y := x . " hello"
msgbox % y
return x
}

echo2(y)
{
listvars
  ToolTip % y, 0, 0
return y
}
)
ahk.ahktextdll(script)
ahk.ahkassign("foo", 3)
msgbox % ahk.ahkgetvar("foo")

ahk.ahkexec("msgbox % foo")
msgbox % bar := ahk.ahkgetvar("foo", 0)
arr := ComObjArray(VT_VARIANT:=12, 3)
arr[0] := "Auto"
arr[1] := "Hot"
arr[2] := "key"
ahk.ahkexec("echo(""bla"")") 
ahk.ahkassign("foo", arr)
ahk.ahkexec("msgbox % foo[0]")
bar := ahk.ahkgetvar("foo", 0)
msgbox % bar[1]
msgbox % ahk.ahkFunction("echo", arr)[2]
msgbox % ahk.ahkPostFunction("echo2", "echo2")

return

!r::reload
!q::exitapp
