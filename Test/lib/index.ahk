; index.ahk  
;; copyright GPLv2. Naveen Garg
;; testIndex:
testIndex:
index(files)
return
;; find gui
find:
    inputbox, word, find word
    msgbox % Index_find(word)
return

;; index()
index(files)
{
  global
  if !files
  inputbox, files, filepattern
  start := A_TickCount
  wordCount := 0
  fileCount := forwardIndex(files)
  loop, % fileCount
  {
    invertedIndex(A_Index)
    if (mod(A_Index, 100) == 0)
      TrayTip, %indexing%, indexing files %A_Index%
  }
  time := (A_TickCount - start) / 1000
  return wordCount . " words in " . fileCount . " files indexed in"
. time . "seconds" . "`nFileReadTime " . FileReadTime
. " ForwardIndexTime " .  ForwardIndexTime

}
;; forwardindex(files)
forwardIndex(files, fileCount = 0)
{
  global
  loop, %files%, 0, 1
  {
    if !A_LoopFileName
      continue
    
    filename := RegExReplace(A_LoopFileName, "[^a-zA-Z_]", "_") 
    filename%A_Index% := filename
    %filename%full := A_LoopFileFullPath
    FileRead, %filename%contents, %A_LoopFileFullPath% ; will be
    ; overwritten 
    fileCount += 1
    if (mod(A_Index, 100) == 0)
      TrayTip, reading, reading file %A_Index% 
}
FileReadTime := (A_TickCount - start) / 1000
    TrayTip, index, read %fileCount% files in %FileReadTime% 

loop, % fileCount
{
    filename := filename%A_Index%
    filewords%A_Index% := wordsIn(filename, %filename%contents)
    if (mod(A_Index, 100) == 0)
    TrayTip, %forwardindex%, forward indexing %A_Index% 
  }
  ForwardIndexTime := (A_TickCount - start) / 1000
  return fileCount ; generated in wordsinfile
}
;; wordsinfile(file)
wordsIn(filename, contents)
{
  contents := RegExReplace(contents, "S)[^a-zA-Z_]", "`n") 
  ; StringReplace, contents, contents, %A_Space%, `n, All ; default
  Sort contents, U     ; U : remove duplicates
  return contents
}
;; invertedindex(index)
invertedIndex(index)
{
  global 
  loop, parse, filewords%index%, `n
  {
    if !A_LoopField 
      continue
    if word%A_LoopField%
    { 
      word%A_LoopField% .= "`n" . filename%index%
    }
    
    else 
    {
      wordCount += 1 ; number of terms in index
    ; word%wordCount% := A_LoopField ; term index in term array
      word%A_LoopField% := filename%index%  ; files containing term
    }
    
  }
} 

;; Index_find(word)
Index_find(word)
{
Global
SetFormat, float, 0.2
  docfreq := documentFrequency(word) 
  doclist := findWord(word) 
  docmap = 
  loop, parse, doclist, `n ; , %A_Space%%A_Tab%
  {
    termfreq := termFrequency(word, %A_LoopField%contents, A_LoopField)  ; word, filecontents
    tfidf := termfreq / docfreq  ; 
    docmap .= tfidf . " " . termfreq . "/" . docfreq . " " . %A_LoopField%full . "`n" 
  }
sort, docmap, NR
  return docmap
}

;; findWord(word)
findWord(word)
{
global
if word%word%
return word%word%
else
ErrorLevel := "word not found"
return ""
}
;; termFrequency(word) 
termFrequency(word, filecontents, filename) 
{
 RegExReplace(filecontents, "i)" . word, "", frequency)
 return frequency
}

;; documentFrequency(word) 
documentFrequency(word) 
{
  RegExReplace(word%word%, "`n", "", frequency)
  return frequency += 1 
}






/*
testwiki.ahk
---------------------------
408078 words in 6043 files indexed in 97 seconds
FileReadTime 8.469000 ForwardIndexTime 115.031000
finding naveen...
*/
