start:
ahkdll := DllCall("LoadLibrary", "str", "..\AutoHotkey.dll")
FileCopy, ..\AutoHotkey.dll, AutoHotkey2.dll
FileCopy, ..\AutoHotkey.dll, AutoHotkey3.dll
ahkdll2 := DllCall("LoadLibrary", "str", "AutoHotkey2.dll")
ahkdll3 := DllCall("LoadLibrary", "str", "AutoHotkey3.dll")
gosub f2
gosub f3
gosub f4
return

F2::
thread1 := DllCall("..\AutoHotkey.dll\ahkdll", "str", "mandelbrot1.ahk", "str"
, "", "str", "parameter1", "Cdecl Int")
return


F3::
thread1 := DllCall("AutoHotkey2.dll\ahkdll", "str", "mandelbrot2.ahk", "str"
, "", "str", "parameter1", "Cdecl Int")
return


F4::
thread1 := DllCall("AutoHotkey3.dll\ahkdll", "str", "mandelbrot3.ahk", "str"
, "", "str", "parameter1", "Cdecl Int")
return

!r::Reload
!q::ExitApp
