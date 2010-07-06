
#Persistent

OutputDebug, % "Via DLL: A_AhkVersion: " . A_AhkVersion

InHelper(PassedThing)
{
  OutputDebug, % "Via DLL: InHelper entered with: " . PassedThing
  Return PassedThing
}
