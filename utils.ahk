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

; Starts ssh agent and adds my private key

::ahk_ex::/c/Program\ Files/AutoHotkey/AutoHotkey.exe
::startup_dir::/c/Users/kvnlo/AppData/Roaming/Microsoft/Windows/Start\ Menu/Programs/Startup
::vscode_dir::/c/Users/kvnlo/AppData/Local/Programs/Microsoft\ VS\ Code

; Miscellaneous
::ssh::eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519

; Git related
::gl::git log
::gs::git status
::ga::git add
::gc::git commit
::gca::git commit --amend
::gp::git push

; typos
:*:neccessary::necessary
:*:necessary::necessary
:*:neccesary::necessary
:*:necesary::necessary
