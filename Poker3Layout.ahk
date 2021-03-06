﻿;========= Author: Sengngy Kouch 
;========= Version: Vanilla Version 1.0            
;========= license: MIT License   
                             
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#MaxHotkeysPerInterval 20000  ;//allow amount of key press in 1 sec.
SetCapsLockState, AlwaysOff

; ================== Suspend the whole script ============================
!F7:: Suspend

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
;$*;::
;if GetKeyState("Capslock", "P")
;  send {blind}{Insert}
;else
;  send {blind}{;}
;return

return ; End of Suspending the script here.