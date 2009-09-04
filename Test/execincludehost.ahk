msgbox % fx()
x = test
gosub %x%
%x%()
return

fx()
{
gosub load
return 1
}
  
load:
import("lateinclude.ahk")
return

!r::
Reload

!q::
ExitApp

