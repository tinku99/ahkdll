#include "stdafx.h" // pre-compiled headers
#include "globaldata.h" // for access to many global vars
#include "application.h" // for MsgSleep()
#include "exports.h"
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
