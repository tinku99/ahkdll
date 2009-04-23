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
return
}

fourth("fourth")
