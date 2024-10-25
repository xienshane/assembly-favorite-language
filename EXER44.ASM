; Filename: EXER44.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: October 25, 2024
; Description: This assembly language program will display a menu of operators
; and prompt two integers, calculating their result based on the operator, and
; display the result
 
.model small
.stack 500h
.data
    intro       db 'THE CALCULATOR',13,10
                DB 'Created by: JOHN WINSTON W.TABADA',13,10
                db 'Date: September 29, 2024', 13,10,10
                db 'Main Menu',13,10,'$'
    a           db 'a - Addition',13,10,'$'
    s           db 's - Subtraction',13,10,'$'
    m           db 'm - Multiplication',13,10,'$'
    d           db 'd - Division',13,10,'$'
    e           db 'e - Exit',13,10,'$'
 
    choice      db 'Enter your choice: $'
 
    aPrompt     db 'Addition$'
    aPrompt1    db 13,10,'Enter first addend: $'
    aPrompt2    db 13,10,'Enter second addend: $'
    aOp         db ' + $'
 
    sPrompt     db 'Subtraction$'
    sPrompt1    db 13,10,'Enter minuend: $'
    sPrompt2    db 13,10,'Enter subtrahend: $'
    sOp         db ' - $'
 
    mPrompt     db 'Multiplication$'
    mPrompt1    db 13,10,'Enter multiplicand: $'
    mPrompt2    db 13,10,'Enter multiplier: $'
    mOp         db ' x $'
 
    dPrompt     db 'Division$'
    dPrompt1    db 13,10,'Enter dividend: $'
    dPrompt2    db 13,10,'Enter divisor: $'
    dOp         db ' / $'
 
    equals      db ' = $'
 
    eDisplay    db 'Exit Program$'
    invalid     db 'INVALID CHOICE!$'
    ending      db 13,10,'Thank you.$'
    negSign     db '-$'
    divZero     db 13,10,'Error: Division by zero is not allowed.', 13, 10,'$'
 
    input1   dw ?
    input2   dw ?
    sum      dw ?
    diff     dw ?
    prod     dw ?
    quo      dw ?
 
.code
 
print proc
    mov ah, 09h
    int 21h
    ret
print endp
 
 
getNum PROC
    ; Read a single digit from keyboard and store in AX
    mov ah, 01h
    int 21h
    sub al, '0'          ; Convert from ASCII to integer
    mov ah, 0
    ret
getNum ENDP
 
getChar PROC
    mov ah,01h
    int 21h
    ret
getChar ENDP
 
converter proc
    push ax
    push bx
    push cx
    push dx
 
    mov cx, 0            ; Counter for digits
    mov bx, 10           ; Base for decimal conversion
 
    converter_loop1:
        xor dx, dx           ; Clear DX before dividing
        div bx               ; AX / BX, result in AX, remainder in DX
        push dx              ; Push remainder onto stack
        inc cx               ; Count the number of digits
        cmp ax, 0            ; Check if quotient is zero
        jne converter_loop1       ; Repeat if not
 
    converter_loop2:
        pop dx               ; Pop the last remainder
        add dl, '0'          ; Convert to ASCII
        mov ah, 02h          ; Print character function
        int 21h              ; Interrupt to print character
        dec cx               ; Decrease the digit counter
        cmp cx, 0            ; Check if finished printing all digits
        jne converter_loop2       ; Continue if not
 
    pop dx
    pop cx
    pop bx
    pop ax
    ret
converter endp  
 
newLine PROC  
    mov ah, 02h
    mov dl, 13
    int 21h
    mov ah, 02h
    mov dl, 10
    int 21h
    ret
newLine ENDP
 
addition proc
    call newLine
    call newLine
 
    mov ah,09h
    mov bl,20h ;green bg and black text
    mov cx,8
    int 10h
    lea dx, aPrompt
    call print
 
    lea dx, aPrompt1
    call print
    call getNum
    mov input1, ax
 
    lea dx, aPrompt2
    call print
    call getNum
    mov input2, ax
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov dx, input1
    add dx, input2
    mov sum, dx
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    call newLine
   
    mov ax, input1
    call converter
   
    lea dx, aOp
    call print
 
    mov ax, input2
    call converter
 
    lea dx, equals
    call print
 
    mov ax, sum
    call converter
 
    call newLine
    ret
addition endp
 
subtraction proc
    call newLine
    call newLine
 
    mov ah,09h
    mov bl,30h ;cyan bg and black text
    mov cx,11
    int 10h
    lea dx, sPrompt
    call print
 
    lea dx, sPrompt1
    call print
    call getNum
    mov input1, ax
 
    lea dx, sPrompt2
    call print
    call getNum
    mov input2, ax
 
    call newLine
 
    mov ax, input1
    call converter
   
    lea dx, sOp
    call print
 
    mov ax, input2
    call converter
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax, input1
    sub ax, input2
    mov diff, ax
    cmp ax, 0
    lea dx, equals
    call print
    jge display_result
 
    xor ax,ax
    mov ax, input2
    sub ax, input1
    mov diff, ax
 
    lea dx, negSign
    call print
    display_result:
        mov ax, diff
        call converter
 
    call newLine
    ret
subtraction endp
 
multiplication proc
    call newLine
    call newLine
 
    mov ah,09h
    mov bl,50h ;purple bg and black text
    mov cx,14
    int 10h
    lea dx, mPrompt
    call print
 
    lea dx, mPrompt1
    call print
    call getNum
    mov input1, ax
 
    lea dx, mPrompt2
    call print
    call getNum
    mov input2, ax
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax, input1
    mov dx, input2
    mul dx
    mov prod, ax  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    call newLine
 
    mov ax, input1
    call converter
   
    lea dx, mOp
    call print
 
    mov ax, input2
    call converter
 
    lea dx, equals
    call print
   
    mov ax, prod
    call converter
 
    call newLine
    ret
multiplication endp
 
checkAndHandleZero PROC
    cmp bx, 0
    jne continueDivision
   
    lea dx, divZero
    call print
 
    call endingDisplay
    continueDivision:
        ret
checkAndHandleZero ENDP
 
division proc
    call newLine
    call newLine
 
    mov ah,09h
    mov bl,60h ;orange bg and black text
    mov cx,8
    int 10h
    lea dx, dPrompt
    call print
 
    lea dx, dPrompt1
    call print
    call getNum
    mov input1, ax
 
    lea dx, dPrompt2
    call print
    call getNum
    mov input2, ax
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax, input1
    mov bx, input2
    call checkAndHandleZero
 
    xor dx, dx
    div bx
    mov quo, ax  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    call newLine
 
    mov ax, input1
    call converter
   
    lea dx, dOp
    call print
 
    mov ax, input2
    call converter
 
    lea dx, equals
    call print
   
    mov ax, quo
    call converter
 
    call newLine
    ret
division endp
 
exitProg proc
    call newLine
    call newLine
 
    mov ah,09h
    mov bl,10h ;blue bg and black text
    mov cx,12
    int 10h
    lea dx, eDisplay
    call print
 
    call newLine
    call terminate
exitProg endp
 
invalidChoice proc  
    call newLine
    call newLine
   
    mov ah,09h
    mov bl,0CEh ;red bg and blinking yellow text
    mov cx,15
    int 10h
    lea dx, invalid
    mov ah, 09h
    int 21h
   
    call newLine
    ret
invalidChoice endp  
 
endingDisplay proc
    lea dx, ending
    call print
    call terminate
   
endingDisplay endp
 
terminate proc
    mov ax, 4C00h
    int 21h
terminate endp
 
start:
    mov  ax, @data
    mov  ds, ax
   
   
    mov ax, 3
    int 10h
   
    lea dx, intro
    call print
 
    mov ah,09h
    mov bl,20h ;green bg and black text
    mov cx,12
    int 10h
    lea dx, a        
    call print
 
    mov ah,09h
    mov bl,30h ;cyan bg and black text
    mov cx,15
    int 10h
    lea dx, s
    call print
 
    mov ah,09h
    mov bl,50h ;purple bg and black text
    mov cx,18
    int 10h
    lea dx, m
    call print
 
    mov ah,09h
    mov bl,60h ;orange bg and black text
    mov cx,12
    int 10h
    lea dx, d
    call print
 
    mov ah,09h
    mov bl,10h ;blue bg and black text
    mov cx,8
    int 10h
    lea dx, e
    call print
 
    call newLine
 
    lea dx, choice
    call print
 
    mov ah, 01h
    int 21h
 
    cmp al,'a'  
    je doAdd
    cmp al,'s'
    je doSub
    cmp al,'m'
    je doMult
    cmp al,'d'
    je doDiv
    cmp al,'e'
    je doExit
    jne doInvalid
 
    doAdd:
        call addition
        call endingDisplay
    doSub:
        call subtraction
        call endingDisplay
    doMult:
        call multiplication
        call endingDisplay    
    doDiv:
        call division          
        call endingDisplay
    doExit:
        call exitProg
    doInvalid:
        call invalidChoice
        call endingDisplay
       
end start
