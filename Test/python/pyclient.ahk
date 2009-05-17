/*
Copyright Naveen Garg, GPL v2.
put in same directory as callback.py and AutoHotkey.dll
*/

#Persistent
dllcall(A_ScriptParams, "int", 42, "cdecl int")
gosub f1
return

f1::
inputbox, x, enter a numerical parameter for python callback
result := dllcall(A_ScriptParams, "int", x, "cdecl int")
gosub f1
return

