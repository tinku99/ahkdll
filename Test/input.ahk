#Persistent
msgbox input
Input, UserInput, V T5 L4 C, {enter}.{esc}{tab}, btw,otoh,fl,ahk,ca
if ErrorLevel = Max
{
    MsgBox, You entered "%UserInput%", which is the maximum length of text.
    return
}
if ErrorLevel = Timeout
{
    MsgBox, You entered "%UserInput%" at which time the input timed out.
    return
}
if ErrorLevel = NewInput
    return
IfInString, ErrorLevel, EndKey:
{
    MsgBox, You entered "%UserInput%" and terminated the input with %ErrorLevel%.
    return
}
; Otherwise, a match was found.
SetKeyDelay, -1  ; Most editors can handle the fastest speed.
if UserInput = btw
    Send, {backspace 4}by the way
else if UserInput = otoh
    Send, {backspace 5}on the other hand
else if UserInput = fl
    Send, {backspace 3}Florida
else if UserInput = ca
    Send, {backspace 3}California
else if UserInput = ahk
    Run, www.autohotkey.com
return
