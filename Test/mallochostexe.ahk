Import("cleanm.ahk", 1, 2)
Import("cleanm2.ahk", 1, 2)
msgbox mallhostexe
return


F3::
Import("clean.ahk", 1, 2)
return

F4::
Import("clean2.ahk", 1, 2)
return

F7::
fx = fxclean
%fx%()
return

F8::
fx2 = fxclean2
%fx2%()
return
