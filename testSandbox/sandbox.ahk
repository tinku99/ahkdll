#Persistent
mousemove, 100, 100   ; disabled, mouse will not move
WhichButton := DllCall("MessageBox", "Int", "0", "Str", "Press Yes or No", "Str", "Title of box", "Int", 4)   ;; dllcall disabled
MsgBox You pressed button #%WhichButton%.  ; msgbox disabled
fx(a, b ){
return substr(a, b)
}     
return
          
