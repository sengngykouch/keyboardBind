;========= Author: Sengngy Kouch 
;========= Version: Vanilla Version 1.0            
;========= license: MIT License   
                             
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#MaxHotkeysPerInterval 20000  ;//allow amount of key press in 1 sec.
SetCapsLockState, AlwaysOff

;======================= Press F1 for staging ==========================
$F1::
{
	Send ^{l}{left}{left}+{right 4}^{c}{left 4}
	var:=clipboard
	if(var = "www.")
	{
		sendinput staging.{enter}
	}
	else if (var = "wcsu")
	{
		sendinput staging.www.{enter}
	}
return
}

;====================== Copy and Paste with ( Alt + L or R click) ====================
Alt & LButton:: send ^{c} return
Alt & RButton:: send ^{v} return


;====================== CapsLock On/Off ======================
CapsLock & Enter::
  state := GetKeyState("Capslock", "T")
  if state
    SetCapsLockState, AlwaysOff
  else
    SetCapsLockState, AlwaysOn
return


;====================== Up Arrow ======================
$*i::
if GetKeyState("Capslock", "P")
  send {blind}{up}
else
  send {blind}{i} 
return

;====================== Down Arrow ======================
$*k::
if GetKeyState("Capslock", "P")
  send {blind}{down}
else
  send {blind}{k} 
return

;====================== Left Arrow ======================
$*j::
if GetKeyState("Capslock", "P")
  send {blind}{left}
else
  send {blind}{j} 
return

;====================== Right Arrow ======================
$*l::
if GetKeyState("Capslock", "P")
  send {blind}{right}
else
  send {blind}{l} 
return

;====================== Delete ======================
$*'::
if GetKeyState("Capslock", "P")
  send {blind}{delete}
else
  send {blind}{'}
return

;====================== Backspace ======================
$*Space::
if GetKeyState("Capslock", "P")
  send {blind}{Backspace}
else
  send {blind}{space}
return

;====================== Pageup ======================
$*u::
if GetKeyState("Capslock", "P")
  send {blind}{PgUP}
else
  send {blind}{u}
return

;====================== PageDown ======================
$*o::
if GetKeyState("Capslock", "P")
  send {blind}{PgDn}
else
  send {blind}{o}
return

;====================== Home ======================
$*h::
if GetKeyState("Capslock", "P")
  send {blind}{Home}
else
  send {blind}{h}
return

;====================== End ======================
$*n::
if GetKeyState("Capslock", "P")
  send {blind}{End}
else
  send {blind}{n}
return

;====================== Insert ======================
$*;::
if GetKeyState("Capslock", "P")
  send {blind}{Insert}
else
  send {blind}{;}
return