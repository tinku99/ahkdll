pipe_name := "pipe.ahk"
fullpipe_name := "\\.\pipe\" . pipe_name
; Before reading the file, AutoHotkey calls GetFileAttributes(). This causes
; the pipe to close, so we must create a second pipe for the actual file contents.
; Open them both before starting AutoHotkey, or the second attempt to open the
; "file" will be very likely to fail. The first created instance of the pipe
; seems to reliably be "opened" first. Otherwise, WriteFile would fail.
pipe_ga := CreateNamedPipe(pipe_name, 2)
pipe    := CreateNamedPipe(pipe_name, 2)
if (pipe=-1 or pipe_ga=-1) {
    MsgBox CreateNamedPipe failed.
    ExitApp
}
Run, %A_AhkPath% "pipeimport.ahk"
; Wait for AutoHotkey to connect to pipe_ga via GetFileAttributes().
sleep, 1000
DllCall("ConnectNamedPipe","uint",pipe_ga,"uint",0)
DllCall("CloseHandle","uint",pipe_ga)
; Wait for AutoHotkey to connect to open the "file".
DllCall("ConnectNamedPipe","uint",pipe,"uint",0)

; AutoHotkey reads the first 3 bytes to check for the UTF-8 BOM "﻿". If it is
; NOT present, AutoHotkey then attempts to "rewind", thus breaking the pipe.
Script = 
(
test:
msgbox imported via pipe
return
)
Script := chr(239) chr(187) chr(191) Script

if !DllCall("WriteFile","uint",pipe,"str",Script,"uint",StrLen(Script)+1,"uint*",0,"uint",0)
    MsgBox WriteFile failed: %ErrorLevel%/%A_LastError%

DllCall("CloseHandle","uint",pipe)


CreateNamedPipe(Name, OpenMode=3, PipeMode=0, MaxInstances=255) {
    return DllCall("CreateNamedPipe","str","\\.\pipe\" Name,"uint",OpenMode
        ,"uint",PipeMode,"uint",MaxInstances,"uint",0,"uint",0,"uint",0,"uint",0)
}
