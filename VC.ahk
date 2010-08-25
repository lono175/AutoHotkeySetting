;double click function
DoubleKey(sendKeys, timeout)
{
  if(A_PriorHotKey = A_ThisHotKey and A_TimeSincePriorHotkey < timeout) 
    Send, %sendKeys%
}

;double ctrl setting
~LCtrl Up:: DoubleKey("{pause}", 200)
; disalbe capslock
CapsLock:: 
    if A_PriorHotkey = CapsLock
    {
         if A_TimeSincePriorHotkey < 500 
         {
             SetCapsLockState, ON
             return
         }
     }
     SetCapsLockState, ON
     keywait, CapsLock
     SetCapsLockState, OFF
     return
; compile
Capslock & C::
	SetCapsLockState, OFF
	Send ^{F7}
	return

; build
Capslock & B::
	SetCapsLockState, OFF
	Send ^!{F12}
	return

; complete word
Capslock & D::
	SetCapsLockState, OFF
	Send !{F10}	
	return

; complete line
Capslock & S::
	SetCapsLockState, OFF
	Send ^!{F9}
	return

Capslock & E::
	SetCapsLockState, OFF
	Send !{F9}
	return

; find tag
Capslock & F::
	SetCapsLockState, OFF
	Send ^!{F10}
	return

; find file
Capslock & G::
	SetCapsLockState, OFF
	Send ^!{F11}
	return

; switch to header
Capslock & T::
	SetCapsLockState, OFF
	Send \t
	SetCapsLockState, OFF		
	return

; Quake like command window, use console2 
`:: 
    IfWinNotExist, ahk_class Console_2_Main
        Run, console
    ELSE IfWinActive, ahk_class Console_2_Main
      	WinMinimize 
   	else
   	     WinActivate
   	 return
    
; Activate VIM
Capslock & 5::
    IfWinNotExist, ahk_class Vim
       return 
    ELSE IfWinActive, ahk_class Vim
      return	
   	ELSE
   	  WinActivate
   	return

; Activate Matlab
Capslock & 4::
    IfWinNotExist, ahk_class SunAwtFrame
       return 
    ELSE IfWinActive, ahk_class SunAwtFrame
      return	
   	ELSE
   	  WinActivate
   	return
; Activate Firefox
Capslock & 3::
    IfWinNotExist, ahk_class MozillaUIWindowClass
       return 
    ELSE IfWinActive, ahk_class MozillaUIWindowClass
      return	
   	ELSE
   	  WinActivate
   	return
