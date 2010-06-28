__setResultToken(rt, r)
{
    /* ; This section may cause loss of format, e.g. for r=0xBEEF.
    if r is integer 
    {
        ; rt.symbol is SYM_INTEGER by default.
        NumPut(r, rt+0, 0, "int64")     ; rt.value_int64 := r
    }
    else if r is float
    {
        NumPut(2, rt+0, 8, "int")       ; rt.symbol := SYM_FLOAT
        NumPut(r, rt+0, 0, "double")    ; rt.value_double := r
    }
    else
    */
    if IsObject(r)
    {
      if (NumGet(rt+0, 8, "int") == 5)       ; rt.symbol := SYM_OBJECT
      {
	oldObjectPointer :=  NumGet(rt+0)                ; rt.object := r
	DllCall(NumGet(NumGet(oldObjectPointer+0)+8), "uint", oldObjectPointer)
	; decrement reference count
      }
        DllCall(NumGet(NumGet(&r)+4), "uint", &r) ; r.AddRef()
        NumPut(&r, rt+0)                ; rt.object := r
        NumPut(5, rt+0, 8, "int")       ; rt.symbol := SYM_OBJECT
    }
    else
    {
        ; See TokenSetResult() in script2.cpp for how this works.
        if StrLen(r) > 255 {
            p := __malloc((StrLen(r) + 1) * (A_IsUnicode ? 2:1))
            NumPut(p, rt+12)            ; rt.circuit_token := p
            NumPut(StrLen(r), rt+4)     ; rt.buf := StrLen(r)
        } else
            p := NumGet(rt+4)           ; p := rt.buf
        StrPut(r, p)
        NumPut(p, rt+0)                 ; rt.marker := p
        NumPut(0, rt+0, 8, "int")       ; rt.symbol := SYM_STRING
    }
}
