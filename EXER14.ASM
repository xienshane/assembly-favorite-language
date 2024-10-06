; Filename: EXER14.ASM
; Programmer Name: Lovely Shane P. Ong
; Date: September 20, 2024
; Description: This assembly language program will continuously get
; character input and display back input until Enter key is pressed.

.MODEL small
.STACK 200h
.DATA
	desc 	db 13,10,10,10,'Filename: EXER14.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: continuously get character input and display back input.',13,10
			db 'Date Created:  September 20, 2024',13,10,10,'$'
    inputChar db ? ; variable to store the input character
    inputMsg db 'Enter a character: $'
    outputMsg db 'You entered: $'
.CODE
Main:
    ; initialize the data segment 
    mov ax, @data
		mov ds, ax
		
		lea dx, desc   
		mov ah, 09h   
		int 21h

    ; display the input prompt message
    mov dx,offset inputMsg
    mov ah,09h
    int 21h

    
    ; read a character from the keyboard
    mov ah,01h          ; function to read a character
    int 21h             ; call DOS interrupt
    mov inputChar, al   ; store the character inputChar

    mov ah,02h
	mov cl,0Ah ; 0Ah is new line
	mov dl,cl
	int 21h

    ; display the output message
    mov dx,offset outputMsg
    mov ah,09h
    int 21h
    
    ; display the character back
    mov dl, inputChar   ; load the character to DL
    mov ah,02h          ; function to display a character
    int 21h             ; call DOS interrupt

    ; exit program 
    mov ax,4c00h        ; function to exit program
    int 21h
END Main