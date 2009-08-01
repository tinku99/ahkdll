#Singleinstance force
#NoEnv
#Persistent
SetBatchLines, -1
SetWinDelay, -1
SetControlDelay, -1

Gui, 1:Default
Gui, Font,s4, Courier New
Gui, Add, Text, vText w250 h500, Please wait ...
Gui, Font, s9
Gui, Add, Text, vResult w250, Please wait ...
Gui, Show, w250 h530 x500, thread3
mandelbrot_run()
return


; For details look at http://www.timestretch.com/FractalBenchmark.html

mandelbrot(x, y)
{
   cr := y - 0.5
   ci := x
   zi := 0.0
   zr := 0.0
   BAILOUT := 16
   MAX_ITERATIONS := 1000

   Loop
   {
      temp := zr * zi
      zr2 := zr * zr
      zi2 := zi * zi
      zr := zr2 - zi2 + cr
      zi := temp + temp + ci
      if (zi2 + zr2 > BAILOUT) {
         return A_Index
      }
      if (A_Index > MAX_ITERATIONS) {
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
      GuiControl,,Text,%wholeoutput%
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
   GuiControl,,Result, % "Autohotkey Elapsed " ((date2-date) / 1000)
   GuiControl,,Text,%wholeoutput%
   return false
}



