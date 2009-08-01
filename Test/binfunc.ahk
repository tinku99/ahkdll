a_prev = 0
a = 1
a_next = b
b_prev = a
b = 2
b_next = 0
c = 4

insert_between("c", "a", "b")
ListVars
traverse("a")
return

insert_between(new, prev, next)
{
  local temp
  %prev%_next := new
  %new%_prev := prev
  %new%_next := next
  %next%_prev := new
}

traverse(element)
{
  name := element
  MsgBox % element . "= " . %element%
  name := element . "_next"
  while, %name%
  {
  element := %name%
  msgbox % %name% . "= " . %element%
  name := %name% . "_next"
  }
}
