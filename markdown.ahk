#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Creates a markdown link. Copy the link, highlight the text,
; then run the command.
; Source https://www.hillelwayne.com/post/ahk/
#!c::
  tmp := clipboard
  clipboard := ""
  Send ^c 
  ClipWait, 2
  clipboard := "[" . clipboard . "](" . tmp . ")"
  Send ^v
Return
