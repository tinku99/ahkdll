/*
Copyright Naveen Garg, GPL v2.
put in same directory as host.py, hostpy.ahk, and AutoHotkey.dll
*/

Gui, Add, Text,, pyclient
Gui, Add, Edit, vName
Gui, Show
#Persistent
OnMessage(800, "Receive_WM_COPYDATA")  ; 0x4a is WM_COPYDATA
dllcall(A_ScriptParams, "int", 42, "cdecl int")
gosub f1
return

f1::
inputbox, x, enter a numerical parameter for python callback
result := dllcall(A_ScriptParams, "int", x, "cdecl int")
gosub f1
return

!q::ExitApp


#SingleInstance

return

Receive_WM_COPYDATA(wParam, lParam)
{
    StringAddress := wParam
    StringLength := DllCall("lstrlen", UInt, StringAddress)
    if StringLength <= 0
        ToolTip %A_ScriptName%`nA blank string was received or there was an error.
    else
    {
        VarSetCapacity(CopyOfData, StringLength)
        DllCall("lstrcpy", "str", CopyOfData, "uint", StringAddress)  ; Copy the string out of the structure.
        ; Show it with ToolTip vs. MsgBox so we can return in a timely fashion:
        TrayTip %A_ScriptName%`nReceived`n%CopyOfData%
    }
    return true  ; Returning 1 (true) is the traditional way to acknowledge this message.
}

