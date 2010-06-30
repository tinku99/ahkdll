foo = bar
bar = hello
ReturnEmptyString()
{
  Return, % ""
}

ReturnNonEmptyString()
{
  Return, % "This, is a string.  Cool, eh?"
}

show(string)
{
msgbox % string
}

Return


#persistent
