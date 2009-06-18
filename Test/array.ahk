varsetcapacity(a, 5000, 89)
element = element%A_Index% 
numput("hello there", a, 7, 7)
ListVars
msgbox % a

loop, 20
{
element = element%A_Index%
numput("hello there", a, 7 * A_Index, 7)
}

msgbox % a
loop, 20
{
msgbox % numget(a, 10 * A_Index, 10)
}
return



