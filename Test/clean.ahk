#Persistent
working:
clean =  there is 
msgbox % clean . "    space" 
return


fxclean(x, y)
{
msgbox % "running fxclean`n" . x . "`n" . y
hotkey, !h, working
hotkey, F12, working
return "hello from fxclean"
}

 
clean:
msgbox clean
return


