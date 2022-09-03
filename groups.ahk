#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

GroupAdd, code, ahk_exe Code.exe
GroupAdd, chrome, ahk_exe chrome.exe
GroupAdd, firefox, ahk_exe firefox.exe 
GroupAdd, slack, ahk_exe slack.exe

!1:: GroupActivate, code, R
!2:: GroupActivate, chrome, R
!3:: GroupActivate, slack,
!4:: GroupActivate, firefox, R
; !5 is mapped to terminal in toggle-terminal.ahk
