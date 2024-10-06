; Filename: EXER15.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: 09/19/2024
; Description: This assembly language program will continuously get 
; character input and display back input until Enter key is pressed.

.model small
.stack 200h
.data
	desc 	db 13,10,10,10,'Filename: EXER5.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: continuously get character input until Enter key is pressed.',13,10
			db 'Date Created:  September 20, 2024',13,10,10,'$'
.code

ProgramStart:
    mov ax, @data
		mov ds, ax
		
		lea dx, desc   
		mov ah, 09h   
		int 21h
    Echoloop:
        mov ah, 1   ; DOS keyboard input function
        int 21h

        cmp al, 13  ; check if key pressed was Enter key
        jz EchoDone ; calls EchoDone function

        mov dl, al  ; put character into DL
        mov ah,2    ; DOS display output function
        int 21h     ; display characater

    jmp Echoloop    ; echo the next character

    EchoDone:
        mov ah, 4ch ; DOS terminate program function
        int 21h     ; terminate program
END ProgramStart