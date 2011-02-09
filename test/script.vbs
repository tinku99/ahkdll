Dim string
Arr = Array("Auto", "Hot", "key!")
For Each i In Arr
   string = string & i
Next
MsgBox "Joined Array Elements:" & vbCR & string, 64, "VBScript MsgBox"
