#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
Hotstring("EndChars", "`t")

; source https://simshaun.medium.com/inserting-en-dash-and-em-dash-on-windows-in-any-application-using-autohotkey-1fd010f4f7eb
; Alt+Minus = En dash
!-::
  Send {U+2013}
return

; Shift+Alt+Minus = Em dash
+!-::
  Send {U+2014}
return

; Starts ssh agent and adds my private key
::ssh::
  Send eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519
Return

; ahk executable
::ahk::
  Send /c/Program\ Files/AutoHotkey/AutoHotkey.exe
Return

; contains ahk scripts so they load on startup
::startup::
  Send /c/Users/kvnlo/AppData/Roaming/Microsoft/Windows/Start\ Menu/Programs/Startup
Return

::gs::
  Send git status
Return