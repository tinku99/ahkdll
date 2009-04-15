SetBatchLines, -1
Loop
{
    Menu, M, Add, Test
    Menu, M, Icon, Test, AutoHotkey.exe
;     Menu, M, Icon, Test
    Menu, M, DeleteAll
;     StdOut(A_Index)
    ToolTip % A_Index
}

Test:
ExitApp