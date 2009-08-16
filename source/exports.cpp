#include "stdafx.h" // pre-compiled headers
#include "globaldata.h" // for access to many global vars
#include "application.h" // for MsgSleep()
#include "exports.h"
#include "script.h"
// Naveen: v1. ahkgetvar()

EXPORT unsigned int ahkFindFunc(char *funcname)
{
return (unsigned int)g_script.FindFunc(funcname);
}

void BIF_FindFunc(ExprTokenType &aResultToken, ExprTokenType *aParam[], int aParamCount) // Added in Nv8.
{
	// Set default return value in case of early return.
	aResultToken.symbol = SYM_INTEGER ;
	aResultToken.marker = "";
	// Get the first arg, which is the string used as the source of the extraction. Call it "findfunc" for clarity.
	char funcname_buf[MAX_NUMBER_SIZE]; // A separate buf because aResultToken.buf is sometimes used to store the result.
	char *funcname = TokenToString(*aParam[0], funcname_buf); // Remember that aResultToken.buf is part of a union, though in this case there's no danger of overwriting it since our result will always be of STRING type (not int or float).
	int funcname_length = (int)EXPR_TOKEN_LENGTH(aParam[0], funcname);
	aResultToken.value_int64 = (__int64)ahkFindFunc(funcname);
	return;
}


EXPORT VarSizeType ahkgetvar(char *name, char *output)
{
	Var *ahkvar = g_script.FindOrAddVar(name);
	return ahkvar->Get(output);  // var.getText() added in V1. 
}	


// Naveen: v6 addFile()
// Todo: support for #Directives, and proper treatment of mIsReadytoExecute
EXPORT unsigned int addFile(char *fileName, bool aAllowDuplicateInclude, int aIgnoreLoadFailure)
{   // dynamically include a file into a script !!
	// labels, hotkeys, functions.   
	static int filesAdded = 0  ; 
	
	Line *oldLastLine = g_script.mLastLine;
	
	if (aIgnoreLoadFailure > 1)  // if third param is > 1, reset all functions, labels, remove hotkeys
	{
		g_script.mFuncCount = 0;   
		g_script.mFirstLabel = NULL ; 
		g_script.mLastLabel = NULL ; 
		g_script.mLastFunc = NULL ; 
	    g_script.mFirstLine = NULL ; 
		g_script.mLastLine = NULL ;
		 g_script.mCurrLine = NULL ; 

 // this didn't seem to be necessary
		 g_script.mPlaceholderLabel = NULL ; 

 g_script.mLineCount = 0 ; 
	
 g_script.mThisHotkeyName = "" ; 
 g_script.mPriorHotkeyName = "" ; 
 g_script.mThisHotkeyStartTime = 0 ; 
 g_script.mPriorHotkeyStartTime = 0 ; 
	
 g_script.mEndChar = 0 ; 
 g_script.mThisHotkeyModifiersLR = 0 ; 
	
 g_script.mNextClipboardViewer = NULL ; 

 g_script.mOnClipboardChangeIsRunning = false ; 
 g_script.mOnClipboardChangeLabel = NULL ; 

	
 g_script.mOnExitLabel = NULL ; 

 g_script.mExitReason = EXIT_NONE ; 
	
 g_script.mFirstLabel = NULL ; 

 g_script.mLastLabel = NULL ; 

		
 g_script.mFirstTimer = NULL ; 

 g_script.mLastTimer = NULL ; 

 g_script.mTimerEnabledCount = 0 ; 
 g_script.mTimerCount = 0 ; 
	
 g_script.mFirstMenu = NULL ; 

 g_script.mLastMenu = NULL ; 

 g_script.mMenuCount = 0 ; 
	
 g_script.mVar = NULL ; 

 g_script.mVarCount = 0 ; 
 g_script.mVarCountMax = 0 ; 
 g_script.mLazyVar = NULL ; 

 g_script.mLazyVarCount = 0 ; 
	
 g_script.mCurrentFuncOpenBlockCount = 0 ; 
 g_script.mNextLineIsFunctionBody = false ; 
	
 g_script.mFuncExceptionVar = NULL ; 

 g_script.mFuncExceptionVarCount = 0 ; 
	
 g_script.mCurrFileIndex = 0 ; 
 g_script.mCombinedLineNumber = 0 ; 
 g_script.mNoHotkeyLabels = true ; 
 g_script.mMenuUseErrorLevel = false ; 
	
 g_script.mFileSpec = "" ; 
 g_script.mFileDir = "" ; 
 g_script.mFileName = "" ; 
 g_script.mOurEXE = "" ; 
 g_script.mOurEXEDir = "" ; 
 g_script.mMainWindowTitle = "" ; 
	
 g_script.mIsReadyToExecute = false ; 
 g_script.mAutoExecSectionIsRunning = false ; 
	
 g_script.mIsRestart = false ; 
 g_script.mIsAutoIt2 = false ; 
 g_script.mErrorStdOut = false ; 

		if (filesAdded == 0)
			{
			SimpleHeap::sBlockCount = 0 ;
			SimpleHeap::sFirst = NULL;
			SimpleHeap::sLast  = NULL;
			SimpleHeap::sMostRecentlyAllocated = NULL;
			}
		if (filesAdded > 0)
			{
			// Naveen added to free memory
			SimpleHeap *next, *curr;
			for (curr = SimpleHeap::sFirst; curr != NULL;)
				{
				next = curr->mNextBlock;  // Save this member's value prior to deleting the object.
				curr->~SimpleHeap() ;
				curr = next;
				}
			SimpleHeap::sBlockCount = 0 ;
			SimpleHeap::sFirst = NULL;
			SimpleHeap::sLast  = NULL;
			SimpleHeap::sMostRecentlyAllocated = NULL;
			}
	
	g_script.LoadIncludedFile(fileName, aAllowDuplicateInclude, (bool) aIgnoreLoadFailure);
	g_script.PreparseBlocks(g_script.mFirstLine); // 
//	g_script.mFirstLine->ExecUntil(UNTIL_RETURN); // Might never return (e.g. infinite loop or ExitApp).
			filesAdded += 1;
	}
	else
	{
	g_script.LoadIncludedFile(fileName, aAllowDuplicateInclude, (bool) aIgnoreLoadFailure);
	g_script.PreparseBlocks(oldLastLine->mNextLine); // 
	}
	return (unsigned int) oldLastLine->mNextLine;  // 
}


void BIF_Import(ExprTokenType &aResultToken, ExprTokenType *aParam[], int aParamCount) // Added in Nv8.
{
	// Set default return value in case of early return.
	aResultToken.symbol = SYM_INTEGER ;
	aResultToken.marker = "";
	bool aIgnoreLoadFailure = false ;
	bool aAllowDuplicateInclude = false ;
	// Get the first arg, which is the string used as the source of the extraction. Call it "haystack" for clarity.
	char haystack_buf[MAX_NUMBER_SIZE]; // A separate buf because aResultToken.buf is sometimes used to store the result.
	char *haystack = TokenToString(*aParam[0], haystack_buf); // Remember that aResultToken.buf is part of a union, though in this case there's no danger of overwriting it since our result will always be of STRING type (not int or float).
	int haystack_length = (int)EXPR_TOKEN_LENGTH(aParam[0], haystack);

	if (aParamCount < 2)// Load-time validation has ensured that at least the first parameter is present:
	{
		aResultToken.value_int64 = (__int64)addFile(haystack, false, 0);
		//  Hotkey::HookUp() ; didn't work: see if we can remove dependence on having to suspend * 2 to enable hotkeys Nv8.
		return;
	}
	else	
		aAllowDuplicateInclude = (bool)TokenToInt64(*aParam[1]); // The one-based starting position in haystack (if any).  Convert it to zero-based.
		__int64 clear = TokenToInt64(*aParam[2]) ;
#ifndef AUTOHOTKEYSC		
	aResultToken.value_int64 = (__int64)addFile(haystack, aAllowDuplicateInclude, (int)clear);
#endif
	return;
}
