#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

GroupAdd, firefox, ahk_exe firefox.exe 
GroupAdd, code, ahk_exe Code.exe
GroupAdd, terminal, ahk_exe wt.exe
GroupAdd, slack, ahk_exe slack.exe

; hotkeys for switching to different programs
!1:: GroupActivate, firefox, R
!2:: GroupActivate, code, R
!4:: GroupActivate, slack, R

; not working
; !3:: GroupActivate, terminal, R

