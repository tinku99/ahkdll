#Persistent
SendMode InputThenPlay
return


F2::
loop, 10
{
send, git add . `; git commit -a
}
return
