#Singleinstance force
#NoEnv
#Persistent
SetBatchLines, -1
SetWinDelay, -1
SetControlDelay, -1

StringSplit, m, 2, %A_Space%
code_add_func(m1)
code_add_func(m2)
pause
mx = mandelbrot_run
%mx%()
return

#Include %A_ScriptDir%\..\LowLevel
#Include code.ahk46
#Include LowLevel.ahk46

; For details look at http://www.timestretch.com/FractalBenchmark.html

