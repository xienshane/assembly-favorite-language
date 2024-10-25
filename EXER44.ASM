; Filename: EXER44.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: October 25, 2024
; Description: This assembly language program will display a menu of operators
; and prompt two integers, calculating their result based on the operator, and
; display the result
 
.MODEL small
.STACK 200h
.DATA
    inputnum1 db ? 
    inputnum2 db ? 
    header      DB 'THE CALCULATOR', 13, 10, \
                    'Created by: LOVELY SHANE P. ONG', 13, 10, \
                    'Date: October 25, 2024', 13, 10,'$'

    header2     DB 13,10,'Main Menu',13,10,'$' 
    choice1     DB 'a - Addition',13,10,'$' 
    choice2     DB 's - Subtraction',13,10,'$' 
    choice3     DB 'm - Multiplication',13,10,'$' 
    choice4     DB 'd - Division',13,10,'$' 
    choice5     DB 'e - Exit',13,10,'$' 

    choice      DB 'Enter your choice: $' 

    add1        DB 'Addition',13,10,'$' 
    add2        DB 'Enter first addend: $' 
    add3        DB 13,10,'Enter second addend: $' 
    add5        DB ' + $'

    sub1        DB 'Subtraction',13,10,'$' 
    sub2        DB 'Enter minuend: $' 
    sub3        DB 13,10,'Enter subtrahend: $' 
    sub5        DB ' - $'

    mul1        DB 'Multiplication',13,10,'$' 
    mul2        DB 'Enter multiplicand: $' 
    mul3        DB 13,10,'Enter multiplier: $' 
    mul5        DB ' x $'

    div1        DB 'Division',13,10,'$' 
    div2        DB 'Enter dividend: $' 
    div3        DB 13,10,'Enter divisor: $' 
    div5        DB ' / $'

    equa        DB ' = $'

    exitDisplay    DB 'Exit Program$'
    invalidDisplay DB 'INVALID CHOICE!','$' 
    continuePrompt DB 13,10,13,10,'Thank you.', '$'
    thankYou       DB 13,10,'Thank you.','$' 

    nxt         DB 0dh, 0ah, '$'

    in1         dw ? 
    in2         dw ?

    in3         db 20 DUP ('$')
    in4         db 20 DUP ('$')

    su          dw ?
    dff         dw ?
    mu          dw ?
    dv          dw ?

    suma        db 20 DUP ('$')
    difa        db 20 DUP ('$')
    mula        db 20 DUP ('$')
    diva        db 20 DUP ('$')

    sum         db 13,10,'Sum: $'
    diff        db 13,10,'Difference: $'
    mult        db 13,10,'Product: $'
    divi        db 13,10,'Quotient: $'

.CODE

itoa:
    push ax
    push bx
    push cx
    push dx

    mov cx, 0 
    mov bx, 10 

loop1:
    xor dx, dx
    div bx 
    push dx 
    inc cx 
    cmp ax, 0 
    jne loop1

loop2:
    pop dx 
    add dl, '0' 
    mov ah, 02h 
    int 21h
    dec cx 
    cmp cx, 0 
    jne loop2

    pop dx
    pop cx
    pop bx
    pop ax
    ret

clearScreen:
    mov ah, 00h
    mov al, 03h
    int 10h      
    ret
printString:
    mov ah, 09h
    mov bl, 07h
    int 21h
    ret

nxln:
    lea dx, nxt
    MOV ah, 09h
    INT 21h
    RET
getChar:
    mov ah,01h
    int 21h
    ret
getNum:
    mov ah,01h  
    int 21h
    sub al, '0'
    mov ah,0  
    RET

displayNum:
    
    int 21h 
    RET
    
InAdd:
    mov ah,09h 
    mov bl,20h 
    mov cx,8 
    int 10h 

    LEA dx, add1 
    CALL printString

    lea dx, add2 
    CALL printString
    
    call getNum
    mov in1, ax
    
    lea dx, add3 
    CALL printString

    CALL getNum
    mov in2,ax

    mov dx, in1
    add dx, in2
    mov su, dx

    LEA dx,  nxt
    CALL printString
    
    mov ax, in1
    call itoa
    mov dx, offset in3
    mov ah, 9
    int 21h

    LEA dx,  add5 
    CALL printString

    mov ax, in2
    call itoa
    mov dx, offset in4
    mov ah, 9
    int 21h

    lea dx, equa
    mov ah, 9
    int 21h

    mov ax, su
    call itoa
    mov dx, offset suma
    mov ah, 9
    int 21h

   ; Prompt to continue
    lea dx, continuePrompt
    mov ah, 09h
    int 21h       

    CALL getChar  
    CALL clearScreen  

    jmp loop_start 

InSub:
    mov ah,09h 
    mov bl,30h 
    mov cx,11
    int 10h 
    
    lea dx, sub1
    CALL printString
    
    lea dx, sub2  
    CALL printString
    
    CALL getNum
    mov in1, ax
    
    lea dx, sub3
    CALL printString

    CALL getNum
    mov in2,ax

    mov dx, in1
    sub dx, in2
    mov dff, dx

    LEA dx,  nxt
    CALL printString 

    mov ax, in1 
    call itoa
    mov dx, offset in3
    mov ah, 9
    int 21h
    
    LEA dx,  sub5  
    CALL printString 
    
    mov ax, in2  
    CALL itoa
    mov dx, offset in4
    mov ah, 9
    int 21h

    lea dx, equa
    mov ah,9
    int 21h

    mov ax, dff
    call itoa
    mov dx, offset difa
    mov ah, 9
    int 21h

    lea dx, continuePrompt
    mov ah, 09h
    int 21h       
    
    CALL getChar  
    CALL clearScreen 
    
    jmp loop_start

multiply:
    mov ah,09h
    mov bl,40h
    mov cx,14
    int 10h

    mov dx, OFFSET mul1
    call printString

    mov dx, OFFSET mul2
    call printString

    call getNum
    mov in1, ax

    mov dx, OFFSET mul3
    call printString

    call getNum
    mov in2, ax

    mov ax, in1
    mov dx, in2
    mul dx
    mov mu, ax

    LEA dx,  nxt 
    CALL printString

    mov ax, in1
    call itoa
    mov dx, offset in3
    mov ah, 9
    int 21h

    LEA dx,  mul5 
    CALL printString
    
    mov ax, in2
    call itoa
    mov dx, offset in4
    mov ah, 9
    int 21h

    lea dx, equa
    mov ah, 9
    int 21h

    mov ax, mu
    call itoa
    mov dx, offset mula
    mov ah, 9
    int 21h

    lea dx, continuePrompt
    mov ah, 09h
    int 21h       
    
    CALL getChar  
    CALL clearScreen 

    jmp loop_start

ProgramStart: 
    mov ax, @data 
    mov ds, ax 

loop_start: 
    CALL clearScreen

    LEA dx,  header 
    CALL printString
    
    LEA dx,  header2 
    CALL printString

    mov ah,09h 
    mov bl,20h  
    mov cx,12  
    int 10h 

    LEA dx, choice1
    CALL printString

    mov ah,09h 
    mov bl,30h  
    mov cx,15 
    int 10h 

    LEA dx,  choice2
    CALL printString 
    
    mov ah,09h 
    mov bl,40h 
    mov cx,18
    int 10h 

    LEA dx,  choice3
    CALL printString
    
    mov ah,09h 
    mov bl,50h 
    mov cx,12
    int 10h 
    
    LEA dx,  choice4
    CALL printString
    
    mov ah,09h 
    mov bl,70h 
    mov cx,8 
    int 10h 
    
    LEA dx, choice5
    CALL PrintString
    
    LEA dx, choice 
    CALL printString
    
    CALL getChar

    ; DECISION
    cmp al,'a'  
    je Addition 
    cmp al,'s' 
    je Subtraction 
    cmp al,'m' 
    je Multiplication 
    cmp al,'d' 
    je Division
    cmp al,'e' 
    je Exit
    jne InvalidInput

InvalidInput:
    CALL nxln
    CALL nxln
    
    mov ah,09h 
    mov bl,11001110B
    mov cx,15 
    int 10h 
    
    LEA dx, invalidDisplay

    CALL printString
    CALL stop

Exit:
    CALL nxln
    CALL nxln

    mov ah,09h 
    mov bl,70h 
    mov cx,12
    int 10h 
    
    LEA dx, exitDisplay
    CALL printString
    CALL stop

Addition: 
    CALL nxln
    CALL nxln
    jmp InAdd

Subtraction: 
    CALL nxln
    CALL nxln
    jmp InSub

Multiplication: 
    call nxln
    call nxln
    jmp multiply

Division: 
    CALL nxln
    CALL nxln

    mov ah,09h 
    mov bl,50h 
    mov cx,8 
    int 10h 

    LEA dx, div1
    CALL printString
    
    LEA dx, div2 
    CALL printString
    
    CALL getNum
    mov in1, ax
    
    LEA dx, div3 
    CALL printString 

    CALL getNum
    mov in2, ax

    mov ax, in1
    xor dx, dx
    mov bx, in2
    div bx
    mov dv, ax
    
    LEA dx,  nxt  
    CALL printString

    mov ax, in1
    call itoa
    mov dx, offset in3
    mov ah, 9
    int 21h
    
    LEA dx,  div5 
    CALL printString

    mov ax, in2
    call itoa
    mov dx, offset in4
    mov ah, 9
    int 21h

    lea dx, equa
    mov ah, 9
    int 21h

    mov ax, dv
    call itoa
    mov dx, offset diva
    mov ah, 9
    int 21h

    lea dx, continuePrompt
    mov ah, 09h
    int 21h       
    
    CALL getChar  
    CALL clearScreen 

    jmp loop_start

stop:
    CALL nxln
    LEA dx,  thankYou 
    CALL printString
    
    mov ax,4C00h  
    int 21h 

END ProgramStart

