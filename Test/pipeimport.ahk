#Persistent
pipe_name := "pipe.ahk"
fullpipe_name := "\\.\pipe\" . pipe_name
import(fullpipe_name)
x = test
gosub %x%
