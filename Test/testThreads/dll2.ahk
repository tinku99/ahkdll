#Persistent
CoordMode, ToolTip, Screen
Thread, priority, 0
; ahkLoop()
return


F7::
Thread, priority, 9999
FirstLoop()
return

F8::
Thread, priority, 9999
SecondLoop() 
return


ahkLoop()  {
  Loop 
  {
    Tooltip, r, 200, 1000, 9
    Sleep, 20000
   }
}


FirstLoop() {
  X := 0

  Loop 
  {
     X += 1
    If (X > 20) {
     Tooltip,,, 1
     Exit
   }
    MouseGetPos, OutX, OutY
     ToolTip, X = %X%,400,(OutY - 10), 1
    Sleep, 200   
  }
return
}

SecondLoop()  {
  Y := 2
  c := (Y)**40
  Loop
  {
     Y *= 2
    If (Y > c) {
     Tooltip,,, 2
     Exit
   }
    MouseGetPos, OutX, OutY
     ToolTip Y = %Y%,400,(OutY + 10), 2
    Sleep, 150
  }
return
}

