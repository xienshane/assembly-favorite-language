; Filename: EXER19.ASM
; Programmer Name: Lovely Shane P. Ong
; Date: September 20, 2024
; Description: This assembly language program will ask the user to input 3 characters. 
; Then display each character on its own line.

.MODEL small
.STACK 200h
.DATA
	desc 	db 13,10,10,10,'Filename: EXER19.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: ask the user to input 3 characters. Then display each character on its own line.',13,10
			db 'Date Created:  September 20, 2024',13,10,10,'$'
    inputCh1 db ? 
    inputCh2 db ? 
    inputCh3 db ?

    inputQ1 db 'Enter first character: $'
    inputQ2 db 0dh,0ah,0dh,0ah,'Enter second character: $'
    inputQ3 db 0dh,0ah,0dh,0ah,'Enter third character: $'

    outputQ1 db 0dh,0ah,0dh,0ah,'The first character is $'
    outputQ2 db '.',0dh,0ah,0dh,0ah,'The second character is $'
    outputQ3 db '.',0dh,0ah,0dh,0ah,'The third character is $'
    dot db '.$'

.CODE
    Main: 

    mov ax, @data
    mov ds, ax
    lea dx, desc   
		mov ah, 09h   
		int 21h  

    mov dx,offset inputQ1
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h
    mov inputCh1,al
    
    mov dx,offset inputQ2
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h
    mov inputCh2,al
    
    mov dx,offset inputQ3
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h
    mov inputCh3,al

    mov dx,offset outputQ1
    mov ah,09h
    int 21h
    
    mov dl, inputCh1
    mov ah,02h
    int 21h

    mov dx,offset outputQ2
    mov ah,09h
    int 21h
    
    mov dl, inputCh2
    mov ah,02h
    int 21h
    
    mov dx,offset outputQ3
    mov ah,09h
    int 21h
    
    mov dl, inputCh3
    mov ah,02h
    int 21h

    mov dx,offset dot
    mov ah,09h
    int 21h

    mov ax,4c00h
    int 21h
END Main
