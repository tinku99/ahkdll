__setParamToken(rt, r)
{
static heap, pointer
if !heap
{
heap := object()
heap._SetCapacity(256)
pointer := 1
}

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
    else if r is integer 
    {
      NumPut(1, rt+0, 8, "int")       ; rt.symbol := SYM_INTEGER
      NumPut(r, rt+0, 0, "Int64")       ; rt.symbol := SYM_INTEGER
      
    }
    Else if r is Float
    {
      NumPut(2, rt+0, 8, "int")       ; rt.symbol := SYM_FLOAT
      NumPut(r, rt+0, 0, "double")    ; rt.value_double := r
    }
    else    {
        ; See TokenSetResult() in script2.cpp for how this works.
        ; p := __malloc((StrLen(r) + 1) * (A_IsUnicode ? 2:1))
	heap[pointer] := r
	p := heap._GetAddress(pointer)
	StrPut(r, p)
        NumPut(p, rt+0)                 ; rt.marker := p
        NumPut(0, rt+0, 8, "int")       ; rt.symbol := SYM_STRING
	pointer :=  Mod(pointer + 1, 256)
    }
}
