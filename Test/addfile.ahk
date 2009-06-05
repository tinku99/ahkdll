second(z)
{
global dynamicFunction
msgbox, second
; gosub test
; gosub label1
return
}

third(z = "third")
{
global dynamicFunction
msgbox, third
dynamicFunction = fourth
return
}

test:
msgbox test
return

F3::
another:
msgbox another
second(3)
x := "second"
%x%(3)
return


