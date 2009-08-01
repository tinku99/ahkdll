; LowLevel_init()

f(123)
f(x){
a = abc
b = def
    pFunc := __findFunc("f")
    pVars := NumGet(pFunc+20)   ; mVars
    Loop % NumGet(pFunc+28)     ; mVarCount
    {
        pVar := NumGet(pVars + (A_Index-1)*4)   ; mVars[A_Index-1]
        text .= __str(NumGet(pvar+24))          ; mName changed from 16
            . "[" NumGet(pvar+12) " of " NumGet(pvar+16) "]: "   ; mLength, mCapacity
            . RegExReplace(__str(NumGet(pvar+8)),"`n","``n") "`n"   ; mContents
    }
    MsgBox %text%
}

msgbox % __getFirstLine()
#Include mylowlevel.ahk
