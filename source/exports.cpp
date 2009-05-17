#include "script.h"
#include "application.h" 

/*
// Naveen export built in variables and commands v0.62
todo: avoid using simple heap for these
*/
EXPORT unsigned int EBIV_True(char *aBuf, char *aVarName)
{
 return BIV_True_False(aBuf, aVarName);

}
EXPORT unsigned int EBIV_MMM(char *aBuf, char *aVarName)
{
 return BIV_MMM_DDD(aBuf, aVarName);

}
EXPORT unsigned int EBIV_DateTime(char *aBuf, char *aVarName)
{
 return BIV_DateTime(aBuf, aVarName);

}
EXPORT unsigned int EBIV_BatchLines(char *aBuf, char *aVarName)
{
 return BIV_BatchLines(aBuf, aVarName);

}
EXPORT unsigned int EBIV_TitleMatchMode(char *aBuf, char *aVarName)
{
 return BIV_TitleMatchMode(aBuf, aVarName);

}
EXPORT unsigned int EBIV_TitleMatchModeSpeed(char *aBuf, char *aVarName)
{
 return BIV_TitleMatchModeSpeed(aBuf, aVarName);

}
EXPORT unsigned int EBIV_DetectHiddenWindows(char *aBuf, char *aVarName)
{
 return BIV_DetectHiddenWindows(aBuf, aVarName);

}
EXPORT unsigned int EBIV_DetectHiddenText(char *aBuf, char *aVarName)
{
 return BIV_DetectHiddenText(aBuf, aVarName);

}
EXPORT unsigned int EBIV_AutoTrim(char *aBuf, char *aVarName)
{
 return BIV_AutoTrim(aBuf, aVarName);

}
EXPORT unsigned int EBIV_StringCaseSense(char *aBuf, char *aVarName)
{
 return BIV_StringCaseSense(aBuf, aVarName);

}
EXPORT unsigned int EBIV_FormatInteger(char *aBuf, char *aVarName)
{
 return BIV_FormatInteger(aBuf, aVarName);

}
EXPORT unsigned int EBIV_FormatFloat(char *aBuf, char *aVarName)
{
 return BIV_FormatFloat(aBuf, aVarName);

}
EXPORT unsigned int EBIV_KeyDelay(char *aBuf, char *aVarName)
{
 return BIV_KeyDelay(aBuf, aVarName);

}
EXPORT unsigned int EBIV_WinDelay(char *aBuf, char *aVarName)
{
 return BIV_WinDelay(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ControlDelay(char *aBuf, char *aVarName)
{
 return BIV_ControlDelay(aBuf, aVarName);

}
EXPORT unsigned int EBIV_MouseDelay(char *aBuf, char *aVarName)
{
 return BIV_MouseDelay(aBuf, aVarName);

}
EXPORT unsigned int EBIV_DefaultMouseSpeed(char *aBuf, char *aVarName)
{
 return BIV_DefaultMouseSpeed(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IsPaused(char *aBuf, char *aVarName)
{
 return BIV_IsPaused(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IsCritical(char *aBuf, char *aVarName)
{
 return BIV_IsCritical(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IsSuspended(char *aBuf, char *aVarName)
{
 return BIV_IsSuspended(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LastError(char *aBuf, char *aVarName)
{
 return BIV_LastError(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IconHidden(char *aBuf, char *aVarName)
{
 return BIV_IconHidden(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IconTip(char *aBuf, char *aVarName)
{
 return BIV_IconTip(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IconFile(char *aBuf, char *aVarName)
{
 return BIV_IconFile(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IconNumber(char *aBuf, char *aVarName)
{
 return BIV_IconNumber(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ExitReason(char *aBuf, char *aVarName)
{
 return BIV_ExitReason(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Space(char *aBuf, char *aVarName)
{
 return BIV_Space_Tab(aBuf, aVarName);

}
EXPORT unsigned int EBIV_AhkVersion(char *aBuf, char *aVarName)
{
 return BIV_AhkVersion(aBuf, aVarName);

}
EXPORT unsigned int EBIV_AhkPath(char *aBuf, char *aVarName)
{
 return BIV_AhkPath(aBuf, aVarName);

}
EXPORT unsigned int EBIV_TickCount(char *aBuf, char *aVarName)
{
 return BIV_TickCount(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Now(char *aBuf, char *aVarName)
{
 return BIV_Now(aBuf, aVarName);

}
EXPORT unsigned int EBIV_OSType(char *aBuf, char *aVarName)
{
 return BIV_OSType(aBuf, aVarName);

}
EXPORT unsigned int EBIV_OSVersion(char *aBuf, char *aVarName)
{
 return BIV_OSVersion(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Language(char *aBuf, char *aVarName)
{
 return BIV_Language(aBuf, aVarName);

}
EXPORT unsigned int EBIV_UserName(char *aBuf, char *aVarName)
{
 return BIV_UserName_ComputerName(aBuf, aVarName);

}
EXPORT unsigned int EBIV_WorkingDir(char *aBuf, char *aVarName)
{
 return BIV_WorkingDir(aBuf, aVarName);

}
EXPORT unsigned int EBIV_WinDir(char *aBuf, char *aVarName)
{
 return BIV_WinDir(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Temp(char *aBuf, char *aVarName)
{
 return BIV_Temp(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ComSpec(char *aBuf, char *aVarName)
{
 return BIV_ComSpec(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ProgramFiles(char *aBuf, char *aVarName)
{
 return BIV_ProgramFiles(aBuf, aVarName);

}
EXPORT unsigned int EBIV_AppData(char *aBuf, char *aVarName)
{
 return BIV_AppData(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Desktop(char *aBuf, char *aVarName)
{
 return BIV_Desktop(aBuf, aVarName);

}
EXPORT unsigned int EBIV_StartMenu(char *aBuf, char *aVarName)
{
 return BIV_StartMenu(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Programs(char *aBuf, char *aVarName)
{
 return BIV_Programs(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Startup(char *aBuf, char *aVarName)
{
 return BIV_Startup(aBuf, aVarName);

}
EXPORT unsigned int EBIV_MyDocuments(char *aBuf, char *aVarName)
{
 return BIV_MyDocuments(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Caret(char *aBuf, char *aVarName)
{
 return BIV_Caret(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Cursor(char *aBuf, char *aVarName)
{
 return BIV_Cursor(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ScreenWidth(char *aBuf, char *aVarName)
{
 return BIV_ScreenWidth_Height(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ScriptName(char *aBuf, char *aVarName)
{
 return BIV_ScriptName(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ScriptDir(char *aBuf, char *aVarName)
{
 return BIV_ScriptDir(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ScriptFullPath(char *aBuf, char *aVarName)
{
 return BIV_ScriptFullPath(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LineNumber(char *aBuf, char *aVarName)
{
 return BIV_LineNumber(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LineFile(char *aBuf, char *aVarName)
{
 return BIV_LineFile(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileName(char *aBuf, char *aVarName)
{
 return BIV_LoopFileName(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileShortName(char *aBuf, char *aVarName)
{
 return BIV_LoopFileShortName(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileExt(char *aBuf, char *aVarName)
{
 return BIV_LoopFileExt(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileDir(char *aBuf, char *aVarName)
{
 return BIV_LoopFileDir(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileFullPath(char *aBuf, char *aVarName)
{
 return BIV_LoopFileFullPath(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileLongPath(char *aBuf, char *aVarName)
{
 return BIV_LoopFileLongPath(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileShortPath(char *aBuf, char *aVarName)
{
 return BIV_LoopFileShortPath(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileTime(char *aBuf, char *aVarName)
{
 return BIV_LoopFileTime(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileAttrib(char *aBuf, char *aVarName)
{
 return BIV_LoopFileAttrib(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopFileSize(char *aBuf, char *aVarName)
{
 return BIV_LoopFileSize(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopRegType(char *aBuf, char *aVarName)
{
 return BIV_LoopRegType(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopRegKey(char *aBuf, char *aVarName)
{
 return BIV_LoopRegKey(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopRegSubKey(char *aBuf, char *aVarName)
{
 return BIV_LoopRegSubKey(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopRegName(char *aBuf, char *aVarName)
{
 return BIV_LoopRegName(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopRegTimeModified(char *aBuf, char *aVarName)
{
 return BIV_LoopRegTimeModified(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopReadLine(char *aBuf, char *aVarName)
{
 return BIV_LoopReadLine(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopField(char *aBuf, char *aVarName)
{
 return BIV_LoopField(aBuf, aVarName);

}
EXPORT unsigned int EBIV_LoopIndex(char *aBuf, char *aVarName)
{
 return BIV_LoopIndex(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ThisFunc(char *aBuf, char *aVarName)
{
 return BIV_ThisFunc(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ThisLabel(char *aBuf, char *aVarName)
{
 return BIV_ThisLabel(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ThisMenuItem(char *aBuf, char *aVarName)
{
 return BIV_ThisMenuItem(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ThisMenuItemPos(char *aBuf, char *aVarName)
{
 return BIV_ThisMenuItemPos(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ThisMenu(char *aBuf, char *aVarName)
{
 return BIV_ThisMenu(aBuf, aVarName);

}
EXPORT unsigned int EBIV_ThisHotkey(char *aBuf, char *aVarName)
{
 return BIV_ThisHotkey(aBuf, aVarName);

}
EXPORT unsigned int EBIV_PriorHotkey(char *aBuf, char *aVarName)
{
 return BIV_PriorHotkey(aBuf, aVarName);

}
EXPORT unsigned int EBIV_TimeSinceThisHotkey(char *aBuf, char *aVarName)
{
 return BIV_TimeSinceThisHotkey(aBuf, aVarName);

}
EXPORT unsigned int EBIV_TimeSincePriorHotkey(char *aBuf, char *aVarName)
{
 return BIV_TimeSincePriorHotkey(aBuf, aVarName);

}
EXPORT unsigned int EBIV_EndChar(char *aBuf, char *aVarName)
{
 return BIV_EndChar(aBuf, aVarName);

}
EXPORT unsigned int EBIV_Gui(char *aBuf, char *aVarName)
{
 return BIV_Gui(aBuf, aVarName);

}
EXPORT unsigned int EBIV_GuiControl(char *aBuf, char *aVarName)
{
 return BIV_GuiControl(aBuf, aVarName);

}
EXPORT unsigned int EBIV_GuiEvent(char *aBuf, char *aVarName)
{
 return BIV_GuiEvent(aBuf, aVarName);

}
EXPORT unsigned int EBIV_EventInfo(char *aBuf, char *aVarName)
{
 return BIV_EventInfo(aBuf, aVarName);

}
EXPORT unsigned int EBIV_TimeIdle(char *aBuf, char *aVarName)
{
 return BIV_TimeIdle(aBuf, aVarName);

}
EXPORT unsigned int EBIV_TimeIdlePhysical(char *aBuf, char *aVarName)
{
 return BIV_TimeIdlePhysical(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IPAddress(char *aBuf, char *aVarName)
{
 return BIV_IPAddress(aBuf, aVarName);

}
EXPORT unsigned int EBIV_IsAdmin(char *aBuf, char *aVarName)
{
 return BIV_IsAdmin(aBuf, aVarName);

}

EXPORT int EStringSplit(unsigned char aActionType, char *aArrayName, char *aInputString, char *aDelimiterList, char *aOmitList){
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->StringSplit(aArrayName, aInputString, aDelimiterList, aOmitList);
return 0;
}
EXPORT int ESplitPath(unsigned char aActionType, char *aFileSpec)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->SplitPath(aFileSpec);
 return 0;
}
EXPORT int EPerformSort(unsigned char aActionType, char *aContents, char *aOptions)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->PerformSort(aContents, aOptions);
 return 0;
}
EXPORT int EGetKeyJoyState(unsigned char aActionType, char *aKeyName, char *aOption)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->GetKeyJoyState(aKeyName, aOption);
 return 0;
}
EXPORT int EDriveSpace(unsigned char aActionType, char *aPath, bool aGetFreeSpace)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->DriveSpace(aPath,  aGetFreeSpace);
 return 0;
}
EXPORT int EDrive(unsigned char aActionType, char *aCmd, char *aValue, char *aValue2)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->Drive(aCmd, aValue, aValue2);
 return 0;
}
EXPORT int EDriveLock(unsigned char aActionType, char aDriveLetter, bool aLockIt)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->DriveLock(aDriveLetter,  aLockIt);
 return 0;
}
EXPORT int EDriveGet(unsigned char aActionType, char *aCmd, char *aValue)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->DriveGet(aCmd, aValue);
 return 0;
}
EXPORT int ESoundPlay(unsigned char aActionType, char *aFilespec, bool aSleepUntilDone)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->SoundPlay(aFilespec,  aSleepUntilDone);
 return 0;
}
EXPORT int EURLDownloadToFile(unsigned char aActionType, char *aURL, char *aFilespec)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->URLDownloadToFile(aURL, aFilespec);
 return 0;
}
EXPORT int EFileSelectFile(unsigned char aActionType, char *aOptions, char *aWorkingDir, char *aGreeting, char *aFilter)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileSelectFile(aOptions, aWorkingDir, aGreeting, aFilter);
 return 0;
}
EXPORT int EFileSelectFolder(unsigned char aActionType, char *aRootDir, char *aOptions, char *aGreeting)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileSelectFolder(aRootDir, aOptions, aGreeting);
 return 0;
}
EXPORT int EFileGetShortcut(unsigned char aActionType, char *aShortcutFile)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileGetShortcut(aShortcutFile);
 return 0;
}
EXPORT int EFileCreateShortcut(unsigned char aActionType, char *aTargetFile, char *aShortcutFile, char *aWorkingDir, char *aArgs, char *aDescription, char *aIconFile, char *aHotkey, char *aIconNumber, char *aRunState)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileCreateShortcut(aTargetFile, aShortcutFile, aWorkingDir, aArgs, aDescription, aIconFile, aHotkey, aIconNumber, aRunState);
 return 0;
}
EXPORT int EFileCreateDir(unsigned char aActionType, char *aDirSpec)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileCreateDir(aDirSpec);
 return 0;
}
EXPORT int EFileRead(unsigned char aActionType, char *aFilespec)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileRead(aFilespec);
 return 0;
}
EXPORT int EFileReadLine(unsigned char aActionType, char *aFilespec, char *aLineNumber)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileReadLine(aFilespec, aLineNumber);
 return 0;
}
EXPORT int EWriteClipboardToFile(unsigned char aActionType, char *aFilespec)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WriteClipboardToFile(aFilespec);
 return 0;
}
EXPORT int EFileDelete(unsigned char aActionType)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileDelete();
 return 0;
}
EXPORT int EFileRecycle(unsigned char aActionType, char *aFilePattern)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileRecycle(aFilePattern);
 return 0;
}
EXPORT int EFileRecycleEmpty(unsigned char aActionType, char *aDriveLetter)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileRecycleEmpty(aDriveLetter);
 return 0;
}
EXPORT int EFileInstall(unsigned char aActionType, char *aSource, char *aDest, char *aFlag)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileInstall(aSource, aDest, aFlag);
 return 0;
}
EXPORT int EFileGetAttrib(unsigned char aActionType, char *aFilespec)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileGetAttrib(aFilespec);
 return 0;
}
EXPORT int EFileGetTime(unsigned char aActionType, char *aFilespec, char aWhichTime)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileGetTime(aFilespec, aWhichTime);
 return 0;
}
EXPORT int EFileGetSize(unsigned char aActionType, char *aFilespec, char *aGranularity)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileGetSize(aFilespec, aGranularity);
 return 0;
}
EXPORT int EFileGetVersion(unsigned char aActionType, char *aFilespec)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->FileGetVersion(aFilespec);
 return 0;
}
EXPORT int EIniRead(unsigned char aActionType, char *aFilespec, char *aSection, char *aKey, char *aDefault)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->IniRead(aFilespec, aSection, aKey, aDefault);
 return 0;
}
EXPORT int EIniWrite(unsigned char aActionType, char *aValue, char *aFilespec, char *aSection, char *aKey)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->IniWrite(aValue, aFilespec, aSection, aKey);
 return 0;
}
EXPORT int EIniDelete(unsigned char aActionType, char *aFilespec, char *aSection, char *aKey)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->IniDelete(aFilespec, aSection, aKey);
 return 0;
}
EXPORT int ERegRead(unsigned char aActionType, HKEY aRootKey, char *aRegSubkey, char *aValueName)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->RegRead(aRootKey, aRegSubkey, aValueName);
 return 0;
}
EXPORT int ERegWrite(unsigned char aActionType, DWORD aValueType, HKEY aRootKey, char *aRegSubkey, char *aValueName, char *aValue)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->RegWrite(aValueType, aRootKey, aRegSubkey, aValueName, aValue);
 return 0;
}
EXPORT int ESplashTextOn(unsigned char aActionType, int aWidth, int aHeight, char *aTitle, char *aText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->SplashTextOn( aWidth,  aHeight, aTitle, aText);
 return 0;
}
EXPORT int EToolTip(unsigned char aActionType, char *aText, char *aX, char *aY, char *aID)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ToolTip(aText, aX, aY, aID);
 return 0;
}
EXPORT int ETrayTip(unsigned char aActionType, char *aTitle, char *aText, char *aTimeout, char *aOptions)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->TrayTip(aTitle, aText, aTimeout, aOptions);
 return 0;
}
EXPORT int ETransform(unsigned char aActionType, char *aCmd, char *aValue1, char *aValue2)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->Transform(aCmd, aValue1, aValue2);
 return 0;
}
EXPORT int EInput(unsigned char aActionType)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->Input(); // The Input command.
 return 0;
}
EXPORT int EWinMove(unsigned char aActionType, char *aTitle, char *aText, char *aX, char *aY
		, char *aWidth , char *aHeight , char *aExcludeTitle , char *aExcludeText )
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinMove(aTitle, aText, aX, aY
		, aWidth , aHeight , aExcludeTitle , aExcludeText );
 return 0;
}
EXPORT int EWinMenuSelectItem(unsigned char aActionType, char *aTitle, char *aText, char *aMenu1, char *aMenu2
		, char *aMenu3, char *aMenu4, char *aMenu5, char *aMenu6, char *aMenu7
		, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinMenuSelectItem(aTitle, aText, aMenu1, aMenu2
		, aMenu3, aMenu4, aMenu5, aMenu6, aMenu7
		, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EControlSend(unsigned char aActionType, char *aControl, char *aKeysToSend, char *aTitle, char *aText
		, char *aExcludeTitle, char *aExcludeText, bool aSendRaw)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlSend(aControl, aKeysToSend, aTitle, aText
		, aExcludeTitle, aExcludeText,  aSendRaw);
 return 0;
}
EXPORT int EControlClick(unsigned char aActionType, vk_type aVK, int aClickCount, char *aOptions, char *aControl
		, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlClick(aVK,  aClickCount, aOptions, aControl
		, aTitle, aText, aExcludeTitle, aExcludeText);
return 0;
}
EXPORT int EControlMove(unsigned char aActionType, char *aControl, char *aX, char *aY, char *aWidth, char *aHeight
		, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlMove(aControl, aX, aY, aWidth, aHeight
		, aTitle, aText, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EControlGetPos(unsigned char aActionType, char *aControl, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlGetPos(aControl, aTitle, aText, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EControlGetFocus(unsigned char aActionType, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlGetFocus(aTitle, aText, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EControlFocus(unsigned char aActionType, char *aControl, char *aTitle, char *aText
		, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlFocus(aControl, aTitle, aText
		, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EControlSetText(unsigned char aActionType, char *aControl, char *aNewText, char *aTitle, char *aText
		, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlSetText(aControl, aNewText, aTitle, aText
		, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EControlGetText(unsigned char aActionType, char *aControl, char *aTitle, char *aText
		, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlGetText(aControl, aTitle, aText
		, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EControl(unsigned char aActionType, char *aCmd, char *aValue, char *aControl, char *aTitle, char *aText
		, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->Control(aCmd, aValue, aControl, aTitle, aText
		, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EControlGet(unsigned char aActionType, char *aCommand, char *aValue, char *aControl, char *aTitle, char *aText
		, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ControlGet(aCommand, aValue, aControl, aTitle, aText
		, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EGuiControl(unsigned char aActionType, char *aCommand, char *aControlID, char *aParam3)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->GuiControl(aCommand, aControlID, aParam3);
 return 0;
}
EXPORT int EGuiControlGet(unsigned char aActionType, char *aCommand, char *aControlID, char *aParam3)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->GuiControlGet(aCommand, aControlID, aParam3);
 return 0;
}
EXPORT int EStatusBarGetText(unsigned char aActionType, char *aPart, char *aTitle, char *aText
		, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->StatusBarGetText(aPart, aTitle, aText
		, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EStatusBarWait(unsigned char aActionType, char *aTextToWaitFor, char *aSeconds, char *aPart, char *aTitle, char *aText
		, char *aInterval, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->StatusBarWait(aTextToWaitFor, aSeconds, aPart, aTitle, aText
		, aInterval, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EScriptPostSendMessage(unsigned char aActionType, bool aUseSend)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ScriptPostSendMessage( aUseSend);
 return 0;
}
EXPORT int EScriptProcess(unsigned char aActionType, char *aCmd, char *aProcess, char *aParam3)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->ScriptProcess(aCmd, aProcess, aParam3);
 return 0;
}
EXPORT int EWinSet(unsigned char aActionType, char *aAttrib, char *aValue, char *aTitle, char *aText
		, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinSet(aAttrib, aValue, aTitle, aText
		, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EWinSetTitle(unsigned char aActionType, char *aTitle, char *aText, char *aNewTitle
		, char *aExcludeTitle , char *aExcludeText )
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinSetTitle(aTitle, aText, aNewTitle
		, aExcludeTitle , aExcludeText );
 return 0;
}
EXPORT int EWinGetTitle(unsigned char aActionType, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinGetTitle(aTitle, aText, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EWinGetClass(unsigned char aActionType, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinGetClass(aTitle, aText, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EWinGet(unsigned char aActionType, char *aCmd, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinGet(aCmd, aTitle, aText, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EWinGetText(unsigned char aActionType, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinGetText(aTitle, aText, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EWinGetPos(unsigned char aActionType, char *aTitle, char *aText, char *aExcludeTitle, char *aExcludeText)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->WinGetPos(aTitle, aText, aExcludeTitle, aExcludeText);
 return 0;
}
EXPORT int EEnvGet(unsigned char aActionType, char *aEnvVarName)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->EnvGet(aEnvVarName);
 return 0;
}
EXPORT int ESysGet(unsigned char aActionType, char *aCmd, char *aValue)
{
ArgStruct *new_arg = (ArgStruct *)SimpleHeap::Malloc(20 * sizeof(ArgStruct)); 
Line *tempLine = new Line(1, 5, aActionType, new_arg, 20);
tempLine->SysGet(aCmd, aValue);
 return 0;
}


