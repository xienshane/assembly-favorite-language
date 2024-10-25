; Filename: EXER44.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: October 25, 2024
; Description: This assembly language program will display a menu of operators
; and prompt two integers, calculating their result based on the operator, and
; display the result

.model small
.stack 100h
.data
    max equ 100
    intro db 'THE CALCULATOR', 10, 13, 'LOVELY SHANE P. ONG', 10,13, 'Date: October 25, 2024', '$'
    mainMenu db 'Main Menu$' 
    addition db 'a - Addition$' 
    subtraction db 's - Subtraction$'
    multiplication db 'm - Multiplication$'
    division db 'd - Division$'
    exit db 'e - Exit$'
    inv db 'INVALID CHOICE!$'
    promptChoice db 'Enter your choice: $'
    inputChoice db ? 

    promptInput db 'Enter first number: ', 10, 13, 'Enter second number: $'

    exitProgram db 'Exit Program$'
    outro db 'Press Enter to continue.$'
    int1 dw ?
    int2 dw ?

    promptadd db 'Enter first addend: ', 10, 13, 'Enter second addend: $'
    displayadd1 db 'First addened is: $'
    displayadd2 db 10, 13, 'Second addened is: $'

    promptsub db 'Enter minuend: ', 10, 13, 'Enter subtrahend: $'
    displaysub1 db 'Minuend is: $'
    displaysub2 db 10, 13, 'Subtrahend is: $'

    promptmul db 'Enter multiplicand: ', 10, 13, 'Enter multiplier: $'
    displaymul1 db 'Multiplicand is: $'
    displaymul2 db 10, 13, 'Multiplier is: $'

    promptdiv db 'Enter dividend: ', 10, 13, 'Enter divisor: $'
    displaydiv1 db 'Dividend is: $'
    displaydiv2 db 10, 13, 'Divisior is: $'

    result dw ?

    resultSum db ' + $'
    resultSub db ' - $'
    resultMul db ' * $'
    resultDiv db ' / $'
    equals db ' = $'
    newline db 10, 13, '$'
    buffer db 6,?,6 dup('$')
.CODE

gotoRowNCol proc
    mov ah, 03h             ; Function to get cursor position
    mov bh, 0               ; Page number
    int 10h                 ; Get the current cursor position (DH = row, DL = column)   
    
    ; Set cursor position to a specific row (e.g., 5) and a new column (e.g., 29)
    mov ah, 02h             ; Function to set cursor position
    mov bh, 0               ; Page number   
    ret 
    endp
printChar proc
    mov ah, 02h          ; Function to print character
    int 21h    
    ret
printChar endp

printString proc
    mov ah, 09h    ; DOS function to display string
    int 21h        ; Call DOS
    ret
printString endp

newL proc
    mov ah, 09h
    lea dx, newline
    int 21h
    ret
newL endp

inputForm proc
    call newL
    lea dx, promptChoice
    call PrintString ; Call PrintString to display the menu

    mov ah, 01h
    int 21h
    mov inputChoice, al

    wait_for_enter proc
    mov ah, 01h         ; Function to read a character
    int 21h             ; Call DOS interrupt
    cmp al, 13          ; Check if the character is Enter (ASCII 13)
    jne wait_for_enter   ; If not, wait again
    ret
    wait_for_enter endp

    ret
inputForm endp

getInput proc
    mov ah, 01h
    int 21h
    ret
getInput endp

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
	    mov ax, @data   ; Initialize the data segment
	    mov ds, ax
	begin:
	    mov ax, 0600h        ; Function to clear the screen
	    mov bh, 0            ; Attribute for the blank line (black background)
	    mov cx, 0            ; Starting row
	    mov dx, 184fh        ; Ending row (maximum for 80x25 text mode)
	    int 10h              ; Call BIOS interrupt
	
	    mov ah, 00h
	    mov al, 03h   ; display setup
	    int 10h
	
	    lea dx, intro
	    call printString
	    call newL
	    call newL
	
	    lea dx, mainMenu
	    call printString
	    call newL
	
	    mov cx, 12
	    call orangeBg 
	    lea dx, addition
	    call printString 
	    call newL
	
	    mov cx, 15
	    call greenBg
	    lea dx, subtraction
	    call printString 
	    call newL
	
	    mov cx, 18
	    call cyanBg
	    lea dx, multiplication
	    call printString 
	    call newL
	
	    mov cx, 12
	    call purpleBg
	    lea dx, division
	    call printString 
	    call newL
	
	    mov cx, 8
	    call greyBg
	    lea dx, exit
	    call printString 

	    call inputForm
	    call newL
	    ; Check the input choice
	    cmp inputChoice, 'a'
	    jne notA
	    jmp isA
	
	notA:
	    cmp inputChoice, 's'
	    jne notS
	    jmp isS
	notS:
	    cmp inputChoice, 'm'
	    jne notM
	    jmp isM
	notM:
	    cmp inputChoice, 'd'
	    jne notD
	    jmp isD
	notD:
	    cmp inputChoice, 'e'
	    jne notE
	    jmp isE
	notE:
	    jmp invalidChoice
	
	isA:
	    mov cx, 12 - 4
	    call orangeBg
	    lea dx, addition + 4
	    call printString 
	    call newL 
	
	    lea dx, promptadd
	    call printString
	
	    call gotoRowNCol
	    mov dh, 13              ; Set the desired row (0-24)
	    mov dl, 20             ; Set the desired column (0-79)
	    int 10h                 ; Set the cursor position
	
	    call setInput 
	    mov int1, ax        ; Store first input
	
	    call gotoRowNCol
	    mov dh, 14        
	    mov dl, 21        
	    int 10h           
	
	    call setInput 
	    mov int2, ax  
	    call newL 
	    
	    lea dx, displayadd1
	    call printString 
	    
	    mov ax, int1
	    call print
	
	    lea dx, displayadd2
	    call printString 
	
	    mov ax, int2
	    call print
	;
	    mov ax, int1
	    add ax, int2
	    mov result, ax
	
	    call newL

        mov ax, int1
        call print
        lea dx, resultSum
	    call printString 
        mov ax, int2
        call print

	    jmp Output
	isS:
	    mov cx, 15 - 4
	    call greenBg
	    lea dx, subtraction + 4
	    call printString 
	    call newL 
	
	    lea dx, promptsub
	    call printString
	
	    call gotoRowNCol
	    mov dh, 13              ; Set the desired row (0-24)
	    mov dl, 15            ; Set the desired column (0-79)
	    int 10h                 ; Set the cursor position
	
	    call setInput 
	    mov int1, ax        ; Store first input
	
	    call gotoRowNCol
	    mov dh, 14        
	    mov dl, 18       
	    int 10h           
	
	    call setInput 
	    mov int2, ax  
	    call newL 
	    
	    lea dx, displaysub1
	    call printString 
	    
	    mov ax, int1
	    call print
	
	    lea dx, displaysub2
	    call printString 
	
	    mov ax, int2
	    call print
	;
	    mov ax, int1
	    add ax, int2
	    mov result, ax
	
	    call newL

        mov ax, int1
        call print
        lea dx, resultSub
	    call printString 
        mov ax, int2
        call print
	
	    jmp Output
	
	isM:
	    mov cx, 18 - 4
	    call cyanBg
	    lea dx, multiplication + 4
	    call printString 
	    call newL 
	
	    lea dx, promptmul
	    call printString
	
	    call gotoRowNCol
	    mov dh, 13              ; Set the desired row (0-24)
	    mov dl, 20              ; Set the desired column (0-79)
	    int 10h                 ; Set the cursor position
	
	    call setInput 
	    mov int1, ax            ; Store first input
	
	    call gotoRowNCol
	    mov dh, 14        
	    mov dl, 18        
	    int 10h           
	
	    call setInput 
	    mov int2, ax            ; Store second input
	    call newL 
	    
	    lea dx, displaymul1
	    call printString 
	    
	    mov ax, int1
	    call print
	
	    lea dx, displaymul2
	    call printString 
	
	    mov ax, int2
	    call print
	
	    mov ax, int1
	    add ax, int2
	    mov result, ax
	
	    call newL

        mov ax, int1
        call print
        lea dx, resultMul
	    call printString 
        mov ax, int2
        call print
	
	    jmp Output
	isD:
	     mov cx, 12 - 4
	    call purpleBg 
	    lea dx, division + 4
	    call printString 
	    call newL 
	
	    lea dx, promptdiv
	    call printString
	
	    call gotoRowNCol
	    mov dh, 13              ; Set the desired row (0-24)
	    mov dl, 16              ; Set the desired column (0-79)
	    int 10h                 ; Set the cursor position
	
	    call setInput 
	    mov int1, ax            ; Store first input
	
	    call gotoRowNCol
	    mov dh, 14        
	    mov dl, 15        
	    int 10h           
	
	    call setInput 
	    mov int2, ax            ; Store second input
	    call newL 
	    
	    lea dx, displaydiv1
	    call printString 
	    
	    mov ax, int1
	    call print
	
	    lea dx, displaydiv2
	    call printString 
	
	    mov ax, int2
	    call print
	
	    mov ax, int1
	    add ax, int2
	    mov result, ax
	
	    call newL

        mov ax, int1
        call print
        lea dx, resultDiv
	    call printString 
        mov ax, int2
        call print
	
	    jmp Output
	
	divisionByZero:
	    call redyellowBlinkingBg
	    lea dx, inv
	    call printString
	    jmp Output
	isE:
	    mov cx, 12
	    call greyBg 
	    lea dx, exitProgram
	    call printString 
	    call newL 
	
	    jmp Done
	invalidChoice:
	    call redyellowBlinkingBg
	    lea dx, inv
	    call printString
	    jmp Ent
	Output:
        lea dx, equals
	    call printString 
        
	    mov ax, result
	    call print 
	Ent:
	    ; Exit the program
	    call newL
	    call newL    
	    lea dx, outro
	    call printString
	waitLoop:
	    call getInput
	    mov inputChoice, al
	    cmp inputChoice, 13
	    jne waitLoop
	    jmp begin
	Done:
	    mov ax, 4C00h   ; Return 0
	    int 21h  
	main endp
	
	orangeBg proc
	    mov al, ' ' 
	    mov bl, 60h
	    int 10h 
	
	    ret
	orangeBg endp
	
	greenBg proc
	    mov ah,09h
	    mov al, ' ' 
	    mov bl, 20h
	    int 10h 
	
	    ret
	greenBg endp
	
	cyanBg proc
	    mov ah,09h
	    mov al, ' ' 
	    mov bl, 30h
	    int 10h 
	
	    ret
	cyanBg endp
	
	purpleBg proc
	    mov ah,09h
	    mov al, ' ' 
	    mov bl, 50h
	    int 10h 
	
	    ret
	purpleBg  endp
	
	greyBg proc
	    mov ah,09h
	    mov al, ' ' 
	    mov bl, 70h
	    int 10h 
	
	    ret
	greyBg  endp
	
	redyellowBlinkingBg proc
	    mov ah, 09h
	    mov al, ' ' 
	    mov bl, 0CEh
	    mov cx, 15
	    int 10h 
	    ret
	redyellowBlinkingBg  endp
	
	asciiToInt proc 
	    sub al, '0'          ; Convert ASCII to integer
	    ret
	asciiToInt endp
	
	intToAscii proc 
	    add al, '0'          ; Convert integer back to ASCII
	    ret 
	intToAscii endp
	
	end main
