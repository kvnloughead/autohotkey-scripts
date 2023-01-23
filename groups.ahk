#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

GroupAdd, code, ahk_exe Code.exe
GroupAdd, chrome, ahk_exe chrome.exe
GroupAdd, slack, ahk_exe slack.exe
GroupAdd, firefox, ahk_exe firefox.exe 
GroupAdd, Explorer, ahk_class CabinetWClass

!1:: GroupActivate, code, R
!2:: GroupActivate, chrome, R
!3:: GroupActivate, slack,
!4:: GroupActivate, firefox, R
; !5 is mapped to terminal in toggle-terminal.ahk
!6:: GroupActivate, Explorer, R

