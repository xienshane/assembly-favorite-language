; Filename: EXER37.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: October 18, 2024
; Description: Create a program that inputs character. If the character 
; is the capital letter A, display message "You entered A.", 
; else display "You entered not A."

.model small
.stack 100h
.data
    msgA db 'You entered A.$'
    msgNotA db 'You entered not A.$'
    inputMsg db 'Enter a character: $'
   
.code
main:
    mov ax, @data
    mov ds, ax
 
    ; Display input prompt
    mov ah, 09h
    lea dx, inputMsg
    int 21h
 
    ; Get character input
    mov ah, 01h
    int 21h
    mov bl, al       ; Store the input in BL
    
    mov ah,02h
	mov cl,0Ah ; 0Ah is new line
	mov dl,cl
	int 21h

    ; Check if character is 'A'
    cmp bl, 'A'
    je is_A
 
    ; If not 'A', display "You entered not A."
    mov ah, 09h
    lea dx, msgNotA
    int 21h
    jmp exit
 
is_A:
    ; If 'A', display "You entered A."
    mov ah, 09h
    lea dx, msgA
    int 21h
 
exit:
    ; End the program
    mov ah, 4Ch
    int 21h
end main
