#Persistent
msgbox clean
return

fxclean(x, y)
{
msgbox % "running fxclean`n" . x . "`n" . y
return "hello from fxclean"
}

 
clean:
msgbox clean
return


