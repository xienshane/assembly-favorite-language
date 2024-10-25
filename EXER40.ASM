; Filename: EXER40.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: October 25, 2024
; Description: This assembly language program will prompt two integers and display their sum

.model small
.stack 100h
.data
    prompt1 db 'Enter first integer : $'
    prompt2 db 'Enter second integer : $'
    resultMsg db 'The sum of the two integers is: $'
    nL db 10, 13, '$'
    int1 dw ?
    int2 dw ?
    result dw ?
    buffer          db 6,?,6 dup('$')   
.code 

newLine proc 
    mov ah, 09h 
    lea dx, nL  
    int 21h
    ret
newLine endp

printString proc  
    mov ah, 09h 
    int 21h
    ret
printString endp

setInput proc 
    ; Read string input
    mov ah, 0Ah                   ; Set AH to 0Ah for buffered input
    lea dx, buffer                ; Load address of buffer into DX
    int 21h                       ; Call DOS interrupt to read input

    ; Convert string to number
    xor ax, ax                    ; Clear AX to prepare for conversion
    xor cx, cx                    ; Clear CX to use as a counter
    mov cl, [buffer+1]            ; Get length of input from buffer
    lea si, buffer+2              ; Point SI to the start of the string
    mov bx, 10                    ; Set BX to 10 for base 10 conversion

convert_loop:                     ; Begin conversion loop
    mul bx                        ; AX = AX * 10 (shift left by one decimal)
    mov dl, [si]                  ; Get next character from string
    sub dl, '0'                   ; Convert ASCII character to numerical value
    add ax, dx                    ; Add converted value to AX
    inc si                        ; Move to the next character
    loop convert_loop             ; Repeat until all characters are processed
    ret                           ; Return from procedure
setInput endp

print proc                 ; Procedure to print a number
    ; Convert number to string
    mov cx, 0                     ; Initialize digit counter to 0
    mov bx, 10                    ; Set BX to 10 for division

divide_loop:                      ; Begin divide loop
    xor dx, dx                    ; Clear DX before division
    div bx                        ; Divide AX by 10 (result in AX, remainder in DX)
    push dx                       ; Push remainder (digit) onto stack
    inc cx                        ; Increment digit counter
    test ax, ax                   ; Check if quotient (AX) is zero
    jnz divide_loop               ; If not zero, continue dividing

print_loop:                       ; Begin print loop
    pop dx                        ; Pop digit from stack
    add dl, '0'                   ; Convert digit to ASCII
    mov ah, 2                     ; Set AH to 2 for character output
    int 21h                       ; Call DOS interrupt to print character
    loop print_loop               ; Repeat until all digits are printed
    ret                           ; Return from procedure
print endp                 ; End of print_number procedure

main proc
    mov ax, @data 
    mov ds, ax

    ; Input first integer
    lea dx, prompt1
    call printString 

    call setInput 
    mov int1, ax        ; Store first input
    call newLine

    ; Input second integer
    lea dx, prompt2
    call printString 

    call setInput 
    mov int2, ax         ; Store second input 
    call newLine 

    mov ax, int1 
    add ax, int2 
    mov result, ax
	
	    ; Display result message
	    lea dx, resultMsg
	    call printString 
	
	    mov ax, result 
	    call print 
	
	    ; Exit program
	    mov ax, 4C00h 
	    int 21h
	main endp
	end main
