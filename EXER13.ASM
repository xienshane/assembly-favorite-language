; Filename: EXER13.ASM
; Programmer Name: Lovely Shane P. Ong
; Date: September 20,2024
; Description: This assembly language program will display multiple string variables on seperate lines.

.MODEL small
.STACK 200h
.DATA
	desc 	db 13,10,10,10,'Filename: EXER1.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Displaying single characters, numbers, and symbols.',13,10
			db 'Date Created:  September 20, 2024',13,10,10,'$'
String1 DB 'Line1',0dh,0ah, '$'
String2 DB 'Line2',0dh,0ah, '$'
String3 DB 'Line3',0dh,0ah, '$'

; carriage return (ASCII code 0Dh) positions the cursor to the left side of the current line of characters
; line feed (ASCII code 0Ah) moves the cursor down one line on the output device.

.CODE
Programstart: 
    mov ax,@data
    mov ds,ax
		lea dx, desc   
		mov ah, 09h   
		int 21h
    mov ah,9                ; DOS print string function
    mov dx,OFFSET String1   ; 1st string to print
    int 21h                 ; invoke DOS to print string

    mov dx,OFFSET String2   ; 2nd string to print
    int 21h                 ; invoke DOS to print string

    mov dx,OFFSET String3   ; 3rd string to print
    int 21h                 ; invoke DOS to print string

    mov ah,4ch              ; DOS terminate program function
    int 21h                 ; invoke DOS to end program
END ProgramStart