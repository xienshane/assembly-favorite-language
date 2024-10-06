; Filename: EXER20.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: September 20, 2024
; Description: This assembly language program will ask the user to input a character.
; Determine if character is letter A and display message "Yes, you have entered letter A."
; If not, display "No, you have not entered letter A. You entered character _."

.MODEL small
.STACK 100h

.DATA

    desc 	db 13,10,10,10,'Filename: EXER20.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Character Input.',13,10
			db 'Date Created:  September 20, 2024',13,10,10,'$'
    inputChar db ? 
    inpQCh db 'Enter a character: $'
    CorrectCh db 13,10,'Yes, you have entered letter A.',13,10,'$'
    InCorrectCh db 13,10,'No, you have not entered letter A. You entered character $'

.CODE
Main:
    mov ax,@data
    mov ds,ax
    
    lea dx, desc   
		mov ah, 09h   
		int 21h
		
    ; Display input prompt
    mov dx,OFFSET inpQCh
    mov ah,9
    int 21h

    ; Read character from user
    mov ah,01h
    int 21h
    mov inputChar,al

    ; Compare character with 'A'
    cmp al,'A'
    je isCharA

    ; Display incorrect message
    mov dx,OFFSET InCorrectCh
    mov ah,9
    int 21h

    ; Display input character
    mov dl, inputChar
    mov ah,02h
    int 21h

    mov ah, 02h 
	mov cl,2Eh
	mov dl,cl
	int 21h

    jmp exit

isCharA:
    ; Display correct message
    mov dx,OFFSET CorrectCh
    mov ah,9
    int 21h

exit:
    ; Terminate program
    mov ah,4ch
    int 21h

END Main