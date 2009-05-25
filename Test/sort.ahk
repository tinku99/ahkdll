#Persistent
VarSetCapacity(x, 30, 0)
x = abcdefghijk ; ghijklmnopqrst
oc := chr(3)
loop, parse, x, ,%oc%
{
msgbox % A_LoopField
}
msgbox % x
return

testsplit:
VarSetCapacity(x, 24, 0)
x = blablalskdjflaskfdjla
oc := chr(1)
stringsplit, y, x,,%oc%
ListVars
return
