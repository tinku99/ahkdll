#Singleinstance force
#NoEnv
#Persistent
SetBatchLines, -1
SetWinDelay, -1
SetControlDelay, -1

StringSplit, m, 2, %A_Space%
code_add_func(m1)
code_add_func(m2)

mx = mandelbrot_run
%mx%()
return

#Include LowLevel.ahk
#Include code.ahk
; For details look at http://www.timestretch.com/FractalBenchmark.html

