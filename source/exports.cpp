#include "stdafx.h" // pre-compiled headers
#include "globaldata.h" // for access to many global vars
#include "application.h" // for MsgSleep()
#include "exports.h"
#include "script.h"
// Naveen: v1. ahkgetvar()
EXPORT VarSizeType ahkgetvar(char *name, char *output)
{
	Var *ahkvar = g_script.FindOrAddVar(name);
	return ahkvar->Get(output);  // var.getText() added in V1. 
}	


// Naveen: v6 addFile()
// Todo: support for #Directives, and proper treatment of mIsReadytoExecute
EXPORT unsigned int addFile(char *fileName, bool aAllowDuplicateInclude, bool aIgnoreLoadFailure)
{   // dynamically include a file into a script !!
	// labels, hotkeys, functions.   
	Line *oldLastLine = g_script.mLastLine;
	g_script.LoadIncludedFile(fileName, aAllowDuplicateInclude, aIgnoreLoadFailure);
	g_script.PreparseBlocks(oldLastLine->mNextLine); // 
	return (unsigned int) oldLastLine->mNextLine;  // 
}




void BIF_Import(ExprTokenType &aResultToken, ExprTokenType *aParam[], int aParamCount) // Added in Nv8.
{
	// Set default return value in case of early return.
	aResultToken.symbol = SYM_STRING;
	aResultToken.marker = "";
	bool aIgnoreLoadFailure = false ;
	bool aAllowDuplicateInclude = false ;
	// Get the first arg, which is the string used as the source of the extraction. Call it "haystack" for clarity.
	char haystack_buf[MAX_NUMBER_SIZE]; // A separate buf because aResultToken.buf is sometimes used to store the result.
	char *haystack = TokenToString(*aParam[0], haystack_buf); // Remember that aResultToken.buf is part of a union, though in this case there's no danger of overwriting it since our result will always be of STRING type (not int or float).
	int haystack_length = (int)EXPR_TOKEN_LENGTH(aParam[0], haystack);

	if (aParamCount < 2)// Load-time validation has ensured that at least the first parameter is present:
	{
		aResultToken.value_int64 = (__int64)addFile(haystack, false, false);
		//  Hotkey::HookUp() ; didn't work: see if we can remove dependence on having to suspend * 2 to enable hotkeys Nv8.
		return;
	}
	else	
		aAllowDuplicateInclude = (bool)TokenToInt64(*aParam[1]); // The one-based starting position in haystack (if any).  Convert it to zero-based.
	
	if (aParamCount > 2)
	{
	__int64 clear = TokenToInt64(*aParam[2]) ;
	if (clear > 1)  // if third param is > 1, reset all functions, labels, remove hotkeys
	{
		// Hotkey::UnHook();  // remove hotkeys	
		// its better to just use the hotkey command to hook the hotkeys instead of hotkey '::' labels
		g_script.mFuncCount = 0;   
		g_script.mFirstLabel = NULL ; 
		g_script.mLastLabel = NULL ; 
		g_script.mLastFunc = NULL ; 

	}
	else
		aIgnoreLoadFailure = (bool)clear;
	}	
aResultToken.value_int64 = (__int64)addFile(haystack, aAllowDuplicateInclude, aIgnoreLoadFailure);
	return;
}
