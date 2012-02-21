ahk := comobjcreate("AutoHotkey.Script.ANSISANDBOX")
FileRead, sandbox, sandbox.ahk                  
ahk.ahktextdll(sandbox)       
x := ahk.ahkFunction("inStr", "helloworld", "hello")
msgbox % "substr returned: " x 
return               
!r::reload
!q::exitapp          
