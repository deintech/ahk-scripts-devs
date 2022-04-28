#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Icon, icons/ahk-blue.ico

; Modifiers
; ^ Ctrl
; ! Alt
; + Shift
; # Win
; < Left
; > Right

; Action
CapsLock::Backspace
!CapsLock::CapsLock     ; Alt+CapsLock          Enable/Disable Caps Lock
PrintScreen::Send #+s

; Accents
!a:: Send {Asc 0225}    ; Alt+a                 á
>!+a:: Send {Asc 0193}  ; Shift+(Right)Alt+a    Á
!e:: Send {Asc 0233}    ; Alt+e                 é
>!+e:: Send {Asc 0201}  ; Shift+(Right)Alt+e    É
!i:: Send {Asc 0237}    ; Alt+i                 í
>!+i:: Send {Asc 0205}  ; Shift+(RightAlt+i     Í
!o:: Send {Asc 0243}    ; Alt+o                 ó
>!+o:: Send {Asc 0211}  ; Shift+(Right)Alt+o    Ó
!u:: Send {Asc 0250}    ; Alt+u                 ú
>!+u:: Send {Asc 0218}  ; Shift+(Right)Alt+u    Ú
!n:: Send {Asc 0241}    ; Alt+n                 ñ
>!+n:: Send {Asc 0209}  ; Shift+(Right)Alt+n    Ñ

; Symbols
#/:: Send {Asc 0191}{Asc 63}{left 1}  ; Win+/   ¿?
#1:: Send {Asc 0161}{Asc 33}{left 1}  ; Win+1   ¡!
#if GetKeyState("CapsLock", "T")
    #,:: Send {Asc 174}                   ; Win+,   «
    #.:: Send {Asc 175}                   ; Win+.   »
#if

; Swap Numbers Row "NumLock" or "NumLock"
; #if GetKeyState("NumLock", "T")
;     *1::!
;     *2::@
;     *3::#
;     *4::$
;     *5::Send `%
;     *6::^
;     *7::&
;     *8::Send `*
;     *9::(
;     *0::)
;     $+1::Send 1
;     $+2::Send 2
;     $+3::Send 3
;     $+4::Send 4
;     $+5::Send 5
;     $+6::Send 6
;     $+7::Send 7
;     $+8::Send 8
;     $+9::Send 9
;     $+0::Send 0
; #if
