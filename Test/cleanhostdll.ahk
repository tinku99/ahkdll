#Persistent
; Thread, interrupt, 0   
msgbox cleanhostdll
return


F7::
msgbox % "hello" . " there"
return

F8::
fx2 = fxclean2
%fx2%()
return

foo:
fx3 = fxclean2
%fx3%()
return


quit2:
traytip, f3, f3
return




