#IfWinActive Window
#ClipboardTimeout 3
Naveen := "How are you doing"
ExitApp
DebugMe()
{
return "does nothing"
}
F1::gosub, debugging
debugging:
DebugMe()
return

