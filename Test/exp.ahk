VarSetCapacity(x, 100, 88)
x = aaaaaaaaasdfs ; some data
numput(0, x, 80, "char")
y = x
copyx = % (x)  
if (numget(x, 85) != numget(copyx, 85))
Msgbox copyx is not the same as x beyond byte element 80.  


x = aaaaaaaaasdfs ; some data
numput(0, x, 10, "char")
copyx := x  
if (numget(x, 15) != numget(copyx, 15))
Msgbox copyx is not the same as x beyond byte element 10.  
msgbox % chr(numget(x, 15, "char") )
msgbox % chr(numget(copyx, 15, "char") )
