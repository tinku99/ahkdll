fourth(z)
{
global dynamicFunction
msgbox, fourth
dynamicFunction = fifth
return
}

fifth(z = "sixth")
{
msgbox fifth
gosub label5
return
}

label5:
msgbox, label5
return


f6::
gosub label5
return
