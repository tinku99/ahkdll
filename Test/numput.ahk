varsetcapacity(a, 10000, 0)
a = a
element = element%A_Index%
numput("element0", a, 0, 10)
loop, 10
{
element = element%A_Index%
numput(element, a, 10 * A_Index, 10)
}

msgbox % a
loop, 10
{
ListVars
msgbox % el := numget(a, 10 * A_Index, 10)
}
return