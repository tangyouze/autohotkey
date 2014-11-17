; This file contains all the short cuts that I want during the usage of my stupid computer
;#NoTrayIcon 
#singleinstance force

Menu, Tray, icon,  bb.ico






; for EMACS
; Capslock::Ctrl

; hide youdao mini windows every one second
settimer, hideyodao, 1000

hideyodao:
  if winexist("ahk_class YdMiniModeWndClassName")
  {
  	if WinActive("ahk_class YdMiniModeWndClassName")
  	{
  	}
  	Else
  	{
  		WinHide
  	}
  }
Return




; win+v copy raw text
#v::                            ; Text–only paste from ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       ; Convert to text
   Send ^v                       ; For best compatibility: SendPlay
   Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ClipBoard = %Clip0%           ; Restore original ClipBoard
   VarSetCapacity(Clip0, 0)      ; Free memory
Return


; change volumn
>^PgUp::
Send {Volume_Up 1}
Return
>^PgDn::
Send {Volume_Down 1}
Return
>^Numpad0::Volume_Mute


; screenshot because TM doesn't have such stuff, and I keep it
^!a::Run "D:\Dropbox\Apps\qqsnapshot.exe"


; these things are not really useful, to faraway from keyboard
^Numpad1::Run "D:\Dropbox\Apps\Sublime Text - copy\sublime_text.exe"

^Numpad4::Run "D:\Dropbox\Apps\Sublime Text\sublime_text.exe"
^Numpad5::Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --show-app-list

^Numpad7::Run notepad.exe
^Numpad8::Run calc.exe
^Numpad9::Run mspaint.exe


NumpadHome::Run notepad.exe
NumpadUp::Run calc.exe
NumpadPgUp::Run mspaint.exe

>!backspace::Run nircmd.exe monitor off

;Alt & j::Send{Ctrl&Tab}

#e::run "D:\Dropbox\Apps\TC7\totalcmd\TOTALCMD.EXE"

; works for clover
; but i suppose to shift to totalcmd instead

;; remap ctrl+tab and shift+ctrl+tab
;!j::
;send {ctrl down}
;sleep 30
;send {tab}
;sleep 30
;send {ctrl up}
;return
;!k::
;send {ctrl down}
;sleep 30
;send {shift down}
;sleep 30
;send {Tab}
;sleep 30
;send {shift up}
;sleep 30
;send {ctrl up}
;return

!j:: send ^{tab}
!k:: send ^+{tab}

;; old thing not work well under clover
; !j::{tab}
; !k::^+{tab}

;+Wheeldown::send ^{tab}
;+Wheelup::send ^+{tab}

;<!Wheeldown::alttab
;<!Wheelup::shiftalttab


; for sublime work better. much like work now
; change close to close workspace first
; so it can easily save project open files.

:*:bb[d]::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, yyyy.MM.dd HH:mm   ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return


:*:bba1::N4-B3C-14, SCE, NTU
:*:bba2::50 Nanyang Avenue
:*:bba3::639798

:*:bba4::#13-74 Blk 757
:*:bba5::Jurong West Street 74
:*:bba6::640757

:*:bbp1::83165280




#include twelvesplit.ahk



#IfWinActive, ahk_class PX_WINDOW_CLASS
{
    !F4::send ^+w
}
#IfWinActive, ahk_class Wan_WidgetWin_0
{
  !j::send ^``
  !k::send ^{Tab}
    ;^Tab::send ^+``
    ;^`::send  ^{Tab}
}

#IfWinActive, ahk_class Chrome_WidgetWin_1
{
    !1::send ^{1}
    !2::send ^{2}
    !3::send ^{3}
    !4::send ^{4}
    !5::send ^{5}
    !6::send ^{6}
    !7::send ^{7}
    !8::send ^{8}
    !9::send ^{9}
}