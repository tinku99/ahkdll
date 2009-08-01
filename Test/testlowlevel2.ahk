#Persistent
x = foo
y = bar
addressY := getVar(y)  ;; crashes
alias(x, addressY + 0)
Msgbox, now x is %x%

#Include lowlevel.ahk
#Include code.ahk

