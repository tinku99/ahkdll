#include "script.h"
#include "application.h" 

/*
// Naveen export built in variables and commands Nv6.
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

