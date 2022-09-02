#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; source https://simshaun.medium.com/inserting-en-dash-and-em-dash-on-windows-in-any-application-using-autohotkey-1fd010f4f7eb
; Alt+Minus = En dash
!-::
  Send {U+2013}
return

; Shift+Alt+Minus = Em dash
+!-::
  Send {U+2014}
return

