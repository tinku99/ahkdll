x = foo
y = bar
addressY := getvar(y)
Alias(x, addressY + 0)
Msgbox, now x is %x%
return
