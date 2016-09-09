;===================== Coded by Sengngy Kouch. Summer2016 ===========================


;================= Press F1 for staging ================
$F12::
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

}



;============ Copy and Paste with ( esc + L or R click) ====================
;esc & LButton:: send ^{c}
;esc & RButton:: send ^{v}

#MaxHotkeysPerInterval 20000  ;//allow amount of key press in 1 sec.

;=============================   Arrow  =================================
CapsLock & i::SendInput, % GetKeyState("Shift", "P") ? "{Shift Down}{Up}{Shift Up}" : "{Up}"
CapsLock & j::SendInput, % GetKeyState("Shift", "P") ? "{Shift Down}{Left}{Shift Up}" : "{Left}"
CapsLock & l::SendInput, % GetKeyState("Shift", "P") ? "{Shift Down}{Right}{Shift Up}" : "{Right}"
CapsLock & k::SendInput, % GetKeyState("Shift", "P") ? "{Shift Down}{Down}{Shift Up}" : "{Down}"

;CapsLock & i & Shift::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Shift}{Up}"

;==================== Page Up and Down ========================================
CapsLock & u::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{PgUp}"
CapsLock & o::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{PgDn}"

;============================= Delete =========================================
CapsLock & '::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Delete}"
CapsLock & BackSpace::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Delete}"

;================================== Home and End =============================
CapsLock & h::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Home}"
CapsLock & n::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{End}"


CapsLock & 1::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Ctrl Down}{k}{Ctrl Up}{Ctrl Down}{c}{Ctrl Up}"
CapsLock & 2::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Ctrl Down}{k}{Ctrl Up}{Ctrl Down}{u}{Ctrl Up}" 

CapsLock & 7::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Alt Down}{r}{Alt Up}"
CapsLock & 8::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Ctrl Down}{F5}{Ctrl Up}" 
CapsLock & =::SendInput, % GetKeyState("Shift", "P") ? "{CapsLock}" : "{Ctrl Down}{k}{Ctrl Up}{Ctrl Down}{d}{Ctrl Up}"
