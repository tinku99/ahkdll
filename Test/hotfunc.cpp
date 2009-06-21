Hotkey::PerformInNewThreadMadeByCaller(HotkeyVariant &aVariant){
  if aVariant.mJumpToLabel
	ResultType result = aVariant.mJumpToLabel->Execute();
  if aVariant.mHotFunc
	{
	  char returnValue[64];
	  Func *hotfunc = g_script.FindFunc(aVariant.mHotFunc);
	  hotfunc->Call(returnValue);
	}
  if aVariant.mFunctionPointer
	(*aVariant.mFunctionPointer)(aVariant);
}
