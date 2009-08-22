viper(mode)
{
  SendMode, InputThenPlay
  Gui 11:Destroy
  Gui 11:Show, Minimize, %mode% ; Hide,
  }

viper_off()
  {
  Gui 11:Destroy
}
