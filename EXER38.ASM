; Filename: EXER38.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: October 18, 2024
; Description: Create a program that inputs a number. Display the 
; following messages depending on the value of the number
; entered: 
; "The number is equal to 5."
; "The number is less than 5."
; "The number is greater than 5."

.model small
.stack 100h
.data
    msgEqual db 'The number is equal to 5.$'
    msgLess db 'The number is less than 5.$'
    msgGreater db 'The number is greater than 5.$'
    inputMsg db 'Enter a number (0-9): $'

.code
main:
    mov ax, @data
    mov ds, ax

    ; Display input prompt
    mov ah, 09h
    lea dx, inputMsg
    int 21h

    ; Get number input from user
    mov ah, 01h
    int 21h
    sub al, '0'      ; Convert ASCII to number
    mov bl, al       ; Store number in BL for comparison

    mov ah,02h
	mov cl,0Ah ; 0Ah is new line
	mov dl,cl
	int 21h
    
    ; Compare input with 5
    cmp bl, 5
    je equal_5
    jl less_than_5
    jmp greater_than_5

    

equal_5:
    ; If number is equal to 5
    mov ah, 09h
    lea dx, msgEqual
    int 21h
    jmp exit

less_than_5:
    ; If number is less than 5
    mov ah, 09h
    lea dx, msgLess
    int 21h
    jmp exit

greater_than_5:
    ; If number is greater than 5
    mov ah, 09h
    lea dx, msgGreater
    int 21h

exit:
    ; End program
    mov ah, 4Ch
    int 21h
end main
