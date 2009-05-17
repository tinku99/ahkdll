MLFLAGS = /c /coff /Cp /Fl /Sc /Sg

All: Invoke.dll UnitTest.exe

Clean: 
	-@if exist Invoke.obj erase Invoke.obj
	-@if exist Invoke.dll erase Invoke.dll
	-@if exist Invoke.lib erase Invoke.lib
	-@if exist Invoke.exp erase Invoke.exp
	-@if exist Invoke.lst erase Invoke.lst
	-@if exist UnitTest.exe erase UnitTest.exe

Invoke.obj: Invoke.asm
        ml $(MLFLAGS) $**


Invoke.dll: Invoke.obj
	link $** -DLL -entry:DllMain /machine:i386 /subsystem:windows /out:Invoke.dll /export:InvokeFunc


UnitTest.exe: UnitTest.cs
	csc $**