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
msgbox label
return

another:
msgbox another
return
