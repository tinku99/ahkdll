; index.ahk  
;; copyright GPLv2. Naveen Garg
;; testIndex:
testIndex:
index(files)
return

;; index()
index(files)
{
  global
  if !files
  inputbox, files, filepattern
  _wordCount := 0
  IndexTime := ReadFiles(files, fileCount)
  return _wordCount . " words in " . fileCount . " files indexed in"
. IndexTime . "seconds" ; . "`nFileReadTime " . FileReadTime
                        ; . " ForwardIndexTime " .  ForwardIndexTime
}
;; ReadFiles(files, fileCount = 0)
ReadFiles(files, ByRef fileCount = 0)
{
local filename, contents, start
  start := A_TickCount
  loop, %files%, 0, 1
  {
    if !A_LoopFileName
      continue
      dir := RegExReplace(files, "[^a-zA-Z_]", "_") 
      fileCount += 1
    filename = fn_%fileCount% ; RegExReplace(A_LoopFileName, "[^a-zA-Z_]", "_") 
    %filename%full := A_LoopFileFullPath
   allFiles .= filename . "," . A_LoopFileFullPath . "`n"
   FileRead, contents, %A_LoopFileFullPath% 
    
    Index_Add(filename, contents)
    if (mod(A_Index, 300) == 0)
      TrayTip, reading, reading file %A_Index% 
  }
  FileReadTime := (A_TickCount - start) / 1000
  TrayTip, index, read %fileCount% files in %FileReadTime% 
  return FileReadTime
}
;; Index_Add(filename, ByRef contents)
Index_Add(filename, ByRef contents)
{
  local words
  contents := wordsIn(contents)
  invertedIndex(contents, filename)
}
;; wordsin(file)
wordsIn(ByRef contents)
{
  contents := RegExReplace(contents, "S)[^a-zA-Z]", "`n") 
  contents := RegExReplace(contents, "S)\b[a-zA-Z]{1,3}\b") 
  ; StringReplace, contents, contents, %A_Space%, `n, All ; default
  Sort contents ; , U    ;remove duplicates
  pos := RegExMatch(contents, "\w")
  StringTrimLeft, contents, contents, (pos - 1)
  StringLower, contents, contents
  return contents
}
;; invertedindex(index)
invertedIndex(ByRef words, filename)
{
  local word, previous, frequency
  loop, parse, words, `n
{
previous := A_LoopField
frequency = 0
break
}
  loop, parse, words, `n
  {
  word := A_LoopField
  if (word == previous)
  {    
  frequency += 1
  continue
  }
else
      {
	if word_%previous%
	{ 
	word_%previous% .= "`n" . filename . "," . frequency
}
	else 
	{
	_wordCount += 1 ; number of terms in index
	word_%previous% := filename . "," . frequency ; files containing term
	allWords .= word . "`n"
	}
	previous := word 
	frequency = 1       
	}
     }
} 
      
;; Index_find(word)
Index_find(word, ByRef freqList)
{
local docmap 
SetFormat, float, 0.2
doclist := findword(word, docfreq) 
freqList := ""
  loop, parse, doclist, `n ; , %A_Space%%A_Tab%
  {
    termfreq := termFrequency(A_LoopField, file)  
    tfidf := termfreq / docfreq  ; 
    docmap .= tfidf . " " . termfreq . "/" . docfreq . " " . %file%full . "`n" 
    freqList .= termfreq . "`n"
  }
  sort, docmap, NR
  sort, freqList, NR
  return docmap
}

;; findword(word, ByRef frequency = 0)
findword(word, ByRef frequency = 0)
{
global
if word_%word%
{
  RegExReplace(word_%word%, "`n", "", frequency)  ; each line has one
                                                 ;  document entry
  frequency += 1 

return word_%word% ; documents containing word
}
else
ErrorLevel := "word not found"
return ""
}
;; termFrequency(word) 
termFrequency(row, ByRef fileName) 
{
StringSplit, fields, row, `,
fileName := fields1 
return (freq := fields2)
}

;; benchmark data

/*
testwiki.ahk
---------------------------
408078 words in 6043 files indexed in 97 seconds
FileReadTime 8.469000 ForwardIndexTime 115.031000
finding naveen...
*/

;; index_write()
index_write(ByRef allwords, ByRef allfiles, overwrite = 0)
{
global
 ; msgbox % allfiles
 start := A_TickCount
indexdir = %A_ScriptDir%\%dir%
FileCreateDir, % indexdir
fileindex = %indexdir%\_files
_wordindex = %indexdir%\_words

if overwrite
{
FileDelete, %indexdir%\*.
}

sort allfiles, N4
FileAppend, % allfiles, % fileindex
sort allwords, U
FileAppend, % allwords, % _wordindex

loop, parse, allwords, `n
{
StringLeft, char, A_LoopField, 2
FileAppend, % A_LoopField . "`n" . word_%A_LoopField% . "`n`n", %indexdir%\word%char%
}
return end := (A_TickCount - start) / 1000

}
