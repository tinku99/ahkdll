adviseUDF(advice, type, advisee)  ; type = before or after
{
    static ACT_EXPRESSION:=3, _sizeof_FuncParam:=16, _Var_Name:=24
        , _JumpToLine:=4, _Param:=8, _ParamCount:=12, _MinParams:=16, _IsBuiltIn:=49
        , pn:="1,2,3,4,5,6,7,8,9,10", SYM_INVALID:=56, SYM_VAR:=3, SYM_FUNC:=55, SYM_OPERAND:=4, VAR_ALIAS:=0
        , count = 0

    ErrorLevel := ErrorLevel  ; As of v1.0.48.02, this line is omitted from ListLines. Its
    ListLines Off             ; presence allows the line which called adviseUDF() to be seen.   

    ; Resolve functions and validate.
    If !(advice_func := __findFunc(advice))
        || !(advisee_func := __findFunc(advisee))
        || NumGet(advisee_func+_IsBuiltIn,0,"char")
    {
        ListLines On
        return false
    }
    param_count := NumGet(advisee_func+_ParamCount)

    ; Begin generating code.
    cg := code_gen()

    ; Begin a standalone expression. Each standalone expression has only one arg.
    eline := code_line(cg, ACT_EXPRESSION )
    code_arg(cg, 0, 1)
    code_line_end(cg)
    arg := NumGet(eline+0, 4)

    ; postfix%count% must fit one ExprTokenType for each param, followed by a SYM_FUNC token
    ; representing a function call, a SYM_INVALID token terminating the expression and
    ; a DerefType holding a pointer to the function to call.
    count += 1
    static(postfix%count%), static(text%count%:="[advise " advice " " type " " advisee "]")
    VarSetCapacity(postfix%count%, 16*(param_count+2)+12, 0) ; 16*(MAX_PARAMS+2) + 12*1
    this_postfix := &postfix%count%
    param := NumGet(advisee_func+_Param)
    pc := 0
    Loop, % param_count
    {
        ; Ignore any parameters beyond the function's capacity.
        If (pc >= NumGet(advice_func+12))
            break

        var := NumGet(param+0)
        ; Resolve ByRef/alias.
        If (NumGet(var+23,0,"char") = VAR_ALIAS)
            var := NumGet(var+12)

        ; Put param var into postfix%count% array.
        NumPut(var, this_postfix+0), NumPut(SYM_VAR, this_postfix+8)

        ; Move to next token in postfix%count% array, increment param count.
        this_postfix += 16
        pc++
        param += _sizeof_FuncParam

    }

    ; Set up the DerefType at the end of the postfix%count% array.
    func_deref := this_postfix+32
    NumPut(advice_func, func_deref+4)
    NumPut(pc, func_deref+9, 0, "char")

    ; Set up SYM_FUNC token.
    NumPut(func_deref, this_postfix+0)
    NumPut(SYM_FUNC, this_postfix+8)
    this_postfix += 16

    ; Terminate postfix%count% array.
    NumPut(SYM_INVALID, this_postfix+8)

    ; Set postfix%count% array of the first arg of 'return' below.
    NumPut(&postfix%count%, arg+12)
    NumPut(&text%count%, arg+4)

    If (type == "after")
    {
        line1 := Numget(advisee_func+_JumpToLine, 0, "UInt")
        Loop
        {
            lineAct := NumGet(line1+0, 0, "UChar")
            If (lineAct != 102)
                line1 := NumGet(line1+0, 20, "UInt")
            Else
                break
        }

        If (ch := code_finalize(cg))
        {
            ; Insert the code before the first return statement
            code_insert_before(ch, line1)
            code_delete_handle(ch)
        }
    }
    Else
    {
        If (ch := code_finalize(cg))
        {
            ; Insert the code before the jump-to line of the function.
            code_insert_before(ch, NumGet(advisee_func+_JumpToLine))
            ; Re-target the function at the new line.
            NumPut(eline, advisee_func+_JumpToLine)
            code_delete_handle(ch)
        }
    }
    code_gen_delete(cg)
    ListLines On
    return !!ch
}


myFunc("Apple","banana")
adviseUDF("SwapParameters","before","myFunc")
myFunc("Apple","banana")
adviseUDF("EXCLAIM","before","myFunc")
adviseUDF("LogParams","before","myFunc")
myFunc("Apple","banana")
adviseUDF("LogParams","after","threeparams")
threeparams("alpha","bravo","charlie")
ListLines
Pause

threeparams(a,b,c) {
    a=%a%
    return
}
myFunc(A,B) {
    MsgBox 0, myFunc, %A%, meet %B%.
    return
}
Exclaim(ByRef A, ByRef B) {
    StringUpper, A, A
    StringUpper, B, B
}
SwapParameters(ByRef A, ByRef B) {
    C := A
    A := RegExReplace(B,"^\w","$U0")
    B := RegExReplace(C,"^\w","$l0")
}
LogParams(a="", b="", c="") {
    MsgBox 0, LogParams, %a%,%b%,%c%
}
#Include LowLevel.ahk
#Include code.ahk
