; Filename: EXER27.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: September 28, 2024
; Description: This program inputs two integers, subtracts the second integer 
; from the first, and displays the difference with handling for negative results.

.model small            
.stack 100h             
.data         
	desc 	db 13,10,10,10,'Filename: EXER27.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: inputs two integers, subtracts the second integer from the first, and displays the difference.',13,10
			db 'Date Created:  Septemmber 28, 2024',13,10,10,'$'         
    input1 db 'Enter first integer (subtrahend): $' 
    input2 db 13,10,'Enter second integer (minuend): $' 
    in1 dw ?            
    in2 dw ?          
    diff dw ?          
    diffBuffer db 20 DUP ('$')
    res db 13,10,'Difference: $'
    negative db '-$'    
.code                   

; itoa subroutine: Convert integer in AX to ASCII and print each digit
itoa:
    push ax             ; Save AX on the stack
    push bx             ; Save BX (used for division by 10)
    push cx             ; Save CX (used as a digit counter)
    push dx             ; Save DX (since we use DX in division)

    mov cx, 0           ; Initialize the digit counter to 0
    mov bx, 10          ; Set BX to 10 (used as the base for decimal division)

loop1:
    xor dx, dx          ; Clear DX (DX:AX is the dividend for division)
    div bx              ; Divide AX by 10, quotient in AX, remainder in DX
    push dx             ; Push the remainder (digit) onto the stack
    inc cx              ; Increment the digit count
    cmp ax, 0           ; Check if the quotient is zero
    jne loop1           ; If not zero, continue dividing

; Now print each digit (starting with the least significant)
loop2:
    pop dx              ; Pop a digit (remainder) from the stack
    add dl, '0'         ; Convert the remainder (digit) into ASCII character
    mov ah, 02h         ; DOS interrupt 21h, function 02h to print a character
    int 21h             ; Call DOS to print the character in DL
    dec cx              ; Decrement the digit counter
    cmp cx, 0           ; Check if all digits have been printed
    jne loop2           ; If not, continue printing

    pop dx              ; Restore DX from the stack
    pop cx              ; Restore CX
    pop bx              ; Restore BX
    pop ax              ; Restore AX
    ret                 ; Return from the subroutine

; Program starts here
start: 
    mov ax, @data       
    mov ds, ax         
    lea dx, desc   
		mov ah, 09h   
		int 21h  
    lea dx, input1      
    mov ah, 9         
    int 21h             


    mov ah, 01h         ; DOS interrupt 21h, function 1 to read a character
    int 21h          
    sub al, '0'         ; Convert the ASCII character to its numeric value
    mov ah, 0           ; Clear AH (we are working with 16-bit integers)
    mov in1, ax         ; Store the result in `in1`

    ; Prompt for the second integer (minuend)
    lea dx, input2      ; Load the address of input2 into DX
    mov ah, 9          
    int 21h            

    ; Get second integer input
    mov ah, 01h         ; DOS interrupt 21h, function 1 to read a character
    int 21h             ; Wait for input from the user
    sub al, '0'         ; Convert the ASCII character to its numeric value
    mov ah, 0           ; Clear AH (we are working with 16-bit integers)
    mov in2, ax         ; Store the result in `in2`

    lea dx, res         
    mov ah, 9           
    int 21h             
    
    ; Perform the subtraction
    mov ax, in1         ; Load the first integer (subtrahend) into AX
    sub ax, in2         ; Subtract the second integer (minuend) from the first
    mov diff, ax         ; Store the result in `diff`

    ; Check if the result is negative
    cmp ax, 0           ; Compare the result with 0
    jge display_result   ; If greater than or equal to 0, display result

    ; Result is negative, update the diff to its absolute value
    neg ax              ; Negate AX to get the absolute value
    mov diff, ax         ; Store the absolute value in `diff`

    ; Display the negative sign before the result
    lea dx, negative   
    mov ah, 9          
    int 21h           

display_result:
    ; Convert and display the result
    mov ax, diff         ; Move the result into AX for conversion
    call itoa           ; Call the itoa subroutine to convert the number to a string

int 27h                 
end start               
