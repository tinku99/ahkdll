__malloc(size)
{
    static init, empty
    ; Allocate 64+ bytes at least once so v never gets "simple alloc" memory.
    if init =
        VarSetCapacity(v, 64), VarSetCapacity(v, 0), init:=true
    ; Let AutoHotkey do malloc(size), then claim ownership of the memory.
    ; -1 for size because VarSetCapacity doesn't include the NULL-terminator.
    VarSetCapacity(v,size-1),p:=&v,NumPut(0,NumPut(0,NumPut(&empty,__getVar(v),8)))
    return p
}

