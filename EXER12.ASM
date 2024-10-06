; Filename: EXER12.ASM
; Programmer Name: Lovely Shane P. Ong
; Date: September 20,2024
; Description; This assembly language program will display multiple string variablrs on a single line.

.MODEL small
.STACK 200h
.DATA
	desc 	db 13,10,10,10,'Filename: EXER12.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: display multiple string variablrs on a single line.',13,10
			db 'Date Created:  September 20, 2024',13,10,10,'$'
String1 DB 'Line1', '$'    ; DB = Define Byte String1 variable and assign 'Line1 value'
String2 DB 'Line2', '$'
String3 DB 'Line3', '$'

.CODE
ProgramStart:
    mov ax,@data
    mov ds,ax
		lea dx, desc   
		mov ah, 09h   
		int 21h
    mov ah,9                    ; DOS print string function
    mov dx,OFFSET String1   ; 1st string to print
    int 21h                     ; invoke DOS to print string

    mov dx,OFFSET String2   ; 2nd string to print
    int 21h                     ; invoke DOS to print string

    mov dx,OFFSET String3   ; 3rd string to print
    int 21h                     ; invoke DOS to print string

    mov ah,4ch   ; DOS terminate program function
    int 21h                     ; invoke DOS to print string
END ProgramStart