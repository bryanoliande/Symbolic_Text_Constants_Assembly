;TITLE  Symbolic_Text_Constants

; Program:     Symbolic_Text_Constants.asm
; Description: Write a program that defines symbolic names for several string literals
        ;Define three strings for symbol named like Message1, Message2, etc.
        ;In the data segment, use each symbolic name to initialize the string variables
        ;Try to use 0D and 0A, as well as a zero terminator in your definitions
        ;In the code segment, set a break point and when running in debug, you can watch your string memory
; Student:     Bryan Oliande
; Date Due:        02/17/2015
; Class:       CSCI 241
; Instructor:  Mr. Ding

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

 ;Define three strings for symbol named like Message1, Message2, etc.
 Message1 TEXTEQU <"Message1">
 Message2 TEXTEQU <"Message2">
 Message3 TEXTEQU <"Message3">

.data
 ;In the data segment, use each symbolic name to initialize the string variables
 str1 BYTE Message1,0dh,0ah,0
 str2 BYTE Message2,0dh,0ah,0
 str3 BYTE Message3,0dh,0ah,0
.code
main1 proc
	;no code needed, set a breakpoint here to watch the strings in memory
   invoke ExitProcess,0
main1 endp
end main1