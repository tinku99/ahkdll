; shareFunction.ahk
LowLevel_init()

m1 := __findFunc("mandelbrot")
m2 := __findFunc("mandelbrot_run")
ahkdll := DllCall("LoadLibrary", "str", "AutoHotkey.dll")
FileCopy, AutoHotkey.dll, AutoHotkey2.dll
FileCopy, AutoHotkey.dll, AutoHotkey3.dll
ahkdll2 := DllCall("LoadLibrary", "str", "AutoHotkey2.dll")
ahkdll3 := DllCall("LoadLibrary", "str", "AutoHotkey3.dll")
return

F2::
thread1 := DllCall("AutoHotkey\ahkdll", "str", "mandelbrot4.ahk", "str"
, "", "str", m1 . " " . m2, "Cdecl Int")
return


F3::
thread1 := DllCall("AutoHotkey2\ahkdll", "str", "mandelbrot5.ahk", "str"
, "", "str", m1 . " " . m2, "Cdecl Int")

return


F4::
thread1 := DllCall("AutoHotkey3\ahkdll", "str", "mandelbrot6.ahk", "str"
, "", "str", m1 . " " . m2, "Cdecl Int")
return



!r::Reload


#Include code.ahk
#Include LowLevel.ahk


mandelbrot(x, y)
{

   cr := y - 0.5
   ci := x
   zi := 0.0
   zr := 0.0
   BAILOUT := 16
   MAX_ITERATIONS := 100
   count = 0
   Loop
   {
count += 1
      temp := zr * zi
      zr2 := zr * zr
      zi2 := zi * zi
      zr := zr2 - zi2 + cr
      zi := temp + temp + ci
      if (zi2 + zr2 > BAILOUT) {
         return count
      }
      if (count > MAX_ITERATIONS) {
         return 0
      }
   }
}

mandelbrot_run()
{
   output := ""

   date := A_TickCount
   y := -39
   Loop
   {
      wholeoutput := wholeoutput output "`n"
      output := ""
;      GuiControl,,%text%,%wholeoutput%
      x := -39
      Loop
      {
         if (mandelbrot(x/40.0, y/40.0) = 0) {
            output .= "*"
	    }
         else
         {
            output .= " "
         }
         x++
         If x = 39
            break
      }
      y++
      If y = 39
         break
   }
   date2 := A_TickCount
   wholeoutput := wholeoutput . output
;   GuiControl,,result, % "Autohotkey Elapsed " ((date2-date) / 1000)
;   GuiControl,,text,%wholeoutput%
 scriptname = %A_ScriptName%
   Msgbox % ((date2-date) / 1000) . scriptname .  " " .  wholeoutput
   return false
}
