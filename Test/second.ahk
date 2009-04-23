second(z)
{
global dynamicFunction
msgbox, second
dynamicFunction = third
return
}
third(z = "third")
{
msgbox % z
}

load(y)
