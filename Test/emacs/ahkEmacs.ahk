; dllclient.ahk
#Persistent
OnMessage(0x4a, "Receive_WM_COPYDATA")  
Gui, Add, Edit
Gui, Show
return

F1::
inputbox, string, stringpointer
msgbox % __str(string)
return

F4::
inputbox, string, stringpointer
msgbox % __str(string + 12)
return
F2::
inputbox, function, function
dllcall("emacs.exe\" . string)  ; works
return

F3::
inputbox message, expression
msgbox % dllcall("emacs.exe\callback", "str", message, "cdecl str")  ; works
return

#Include %A_ScriptDir%
#Include LowLevel\LowLevel.ahk
#Include LowLevel\code.ahk

;; Receive_WM_COPYDATA(wParam, lParam)
Receive_WM_COPYDATA(wParam, lParam)
{
Global CopyOfData
    Critical
    StringAddress := NumGet(lParam + 8)  ; lParam+8 is the address of CopyDataStruct's lpData member.
    StringLength := DllCall("lstrlen", UInt, StringAddress)
    if StringLength <= 0
        ToolTip %A_ScriptName%`nA blank string was received or there was an error.
    else
    {
        VarSetCapacity(CopyOfData, 200)
        DllCall("lstrcpy", "str", CopyOfData, "uint", StringAddress)  ; Copy the string out of the structure.
        ; Show it with ToolTip vs. MsgBox so we can return in a timely fashion:
        ; ToolTip %A_ScriptName%`nReceived the following string:`n%CopyOfData%
	msgbox % CopyOfData 
    }
    return true  ; Returning 1 (true) is the traditional way to acknowledge this message.
}
