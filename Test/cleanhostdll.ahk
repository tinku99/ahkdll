#Persistent
msgbox cleanhostdll
return


F7::
fx = fxclean
%fx%()
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

file1:
x := "second"
x = test
x = another
return


fx()
{
x = 3
}
