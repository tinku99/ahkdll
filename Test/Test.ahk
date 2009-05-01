MsgBox % SimpleExpr("1 + 3 * 2")

SimpleExpr(expr)
{
    static line, arg
    if !VarSetCapacity(line) {   ; one-time initialization
        VarSetCapacity(line,32,0), VarSetCapacity(arg,12,0)
        NumPut(102,line,0,"char")           ; line.mActionType = ACT_RETURN
        NumPut(&arg,line,4)                 ; line.mArg = &arg
        NumPut(&line,NumPut(&line,line,16)) ; line.mNextLine = line.mPrevLine = &line
        NumPut(1,arg,1,"char")              ; arg.is_expression = true
        cb:=RegisterCallback("SimpleExprStub")
        NumPut(&line,NumGet(cb+28),4)       ; cb->Func->mJumpToLine = &line
        DllCall("GlobalFree","uint",cb)
    }
    NumPut(1,line,1,"char")                 ; line.mArgc = 1
    NumPut(StrLen(expr)+1,arg,2,"short")    ; arg.length = StrLen(expr)+1
    NumPut(&expr,arg,4)                     ; arg.text = &expr
    ret := SimpleExprStub()
    ; Reset mArgc to 0 so ListLines does not try to read 'expr', which will
    ; become invalid once this function returns.
    NumPut(0,line,1,"char")                 ; mArgc = 0
    return ret
}
SimpleExprStub() {
}