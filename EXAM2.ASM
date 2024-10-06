;Filename: EXAM2.asm
;CS243 Lab Hands-on Exam No. 2
;First Semester SY 2024-2025
;Student Name: LOVELY SHANE P. ONG
;Date Finished: September 28, 2024

.model small
.stack 500h
.data
    intro       db 'THE CALCULATOR',13,10
                DB 'Created by: LOVELY SHANE P. ONG',13,10
                db 'Date: September 28, 2024', 13,10,10
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
    aDisplay1   db 13,10,'First addend is: $'
    aDisplay2   db 13,10,'Second addend is: $'

    sPrompt     db 'Subtraction$'
    sPrompt1    db 13,10,'Enter minuend: $'
    sPrompt2    db 13,10,'Enter subtrahend: $'
    sDisplay1   db 13,10,'Minuend is: $'
    sDisplay2   db 13,10,'Subtrahend is: $'

    mPrompt     db 'Multiplication$'
    mPrompt1    db 13,10,'Enter multiplicand: $'
    mPrompt2    db 13,10,'Enter multiplier: $'
    mDisplay1   db 13,10,'Multiplicand is: $'
    mDisplay2   db 13,10,'Multiplier is: $'

    dPrompt     db 'Division$'
    dPrompt1    db 13,10,'Enter dividend: $'
    dPrompt2    db 13,10,'Enter divisor: $'
    dDisplay1   db 13,10,'Dividend is: $'
    dDisplay2   db 13,10,'Divisor is: $'

    eDisplay    db 'Exit Program$'
    invalid     db 'INVALID CHOICE!$'
    thanks      db 13,10,'Thank you.$'

    input1      db 10, 10 dup(?)
    input2      db 10, 10 dup(?)
  
.code

print proc
    mov ah, 09h
    int 21h
    ret
print endp

scan PROC
    mov  ah, 0AH 
    int  21h
    ret
scan ENDP

newLine PROC  
    mov ah, 02h
    mov dl, 10
    int 21h
    ret
newLine ENDP

displaychar PROC
    mov  dl, [si]
    mov  ah, 02h
    int  21h
    inc  si
    ret
displaychar ENDP

start:
    mov  ax, @data
    mov  ds, ax
    mov ax, 3
    int 10h
    

    lea dx, intro
    call print 

    mov ah,09h
    mov bl,20h 
    mov cx,12
    int 10h
    lea dx, a         
    call print

    mov ah,09h
    mov bl,30h 
    mov cx,15
    int 10h
    lea dx, s
    call print

    mov ah,09h
    mov bl,50h 
    mov cx,18
    int 10h
    lea dx, m
    call print

    mov ah,09h
    mov bl,60h 
    mov cx,12
    int 10h
    lea dx, d
    call print

    mov ah,09h
    mov bl,10h 
    mov cx,8
    int 10h
    lea dx, e
    call print

    lea dx, choice
    call print

    mov ah, 01h
    int 21h

    cmp al, 'a'
    je case_a
    jmp check_s

    case_a:
        call newLine
        call newLine

        mov ah,09h
        mov bl,20h 
        mov cx,8
        int 10h
        lea dx, aPrompt
        call print

        lea dx, aPrompt1
        call print
        lea dx, input1
        call scan

        lea dx, aPrompt2
        call print 
        lea dx, input2
        call scan

        lea dx, aDisplay1
        call print
        lea  si, input1 + 2
        mov  cl, [input1 + 1]
        loop1:        
            call displaychar
            loop loop1

        lea dx, aDisplay2
        call print
        lea  si, input2 + 2
        mov  cl, [input2 + 1]
        loop2:        
            call displaychar
            loop loop2

        call newLine
        jmp thank_you

    check_s:
        cmp al, 's'
        je case_s
        jmp check_m
        
        case_s:
            call newLine
            call newLine

            mov ah,09h
            mov bl,30h 
            mov cx,11
            int 10h
            lea dx, sPrompt
            call print

            lea dx, sPrompt1
            call print
            lea dx, input1
            call scan

            lea dx, sPrompt2
            call print 
            lea dx, input2
            call scan

            lea dx, sDisplay1
            call print
            lea  si, input1 + 2
            mov  cl, [input1 + 1]
            loop3:        
                call displaychar
                loop loop3

            lea dx, sDisplay2
            call print
            lea  si, input2 + 2
            mov  cl, [input2 + 1]
            loop4:        
                call displaychar
                loop loop4

        call newLine
        jmp thank_you

    check_m:
        cmp al, 'm'
        je case_m
        jmp check_d
        
        case_m:
            call newLine
            call newLine

            mov ah,09h
            mov bl,50h 
            mov cx,14
            int 10h
            lea dx, mPrompt
            call print

            lea dx, mPrompt1
            call print
            lea dx, input1
            call scan

            lea dx, mPrompt2
            call print 
            lea dx, input2
            call scan

            lea dx, mDisplay1
            call print
            lea  si, input1 + 2
            mov  cl, [input1 + 1]
            loop5:        
                call displaychar
                loop loop5

            lea dx, mDisplay2
            call print
            lea  si, input2 + 2
            mov  cl, [input2 + 1]
            loop6:        
                call displaychar
                loop loop6

        call newLine
        jmp thank_you

    check_d:
        cmp al, 'd'
        je case_d
        jmp check_e

        case_d:
            call newLine
            call newLine
            mov ah,09h
            mov bl,60h 
            mov cx,8
            int 10h
            lea dx, dPrompt
            call print

            lea dx, dPrompt1
            call print
            lea dx, input1
            call scan

            lea dx, dPrompt2
            call print 
            lea dx, input2
            call scan

            lea dx, dDisplay1
            call print
            lea  si, input1 + 2
            mov  cl, [input1 + 1]
            loop7: 
                call displaychar
                loop loop7

            lea dx, dDisplay2
            call print
            lea  si, input2 + 2
            mov  cl, [input2 + 1]
            loop8:        
                call displaychar
                loop loop8
        
        call newLine
        jmp thank_you

    check_e:
        cmp al, 'e'
        je case_e
        jmp invalidChoice
        
        case_e:
            call newLine
            call newLine

            mov ah,09h
            mov bl,10h 
            mov cx,12
            int 10h
            lea dx, eDisplay
            call print 

        call newLine
        jmp thank_you

    invalidChoice:
        call newLine
        call newLine
        
        mov ah,09h
        mov bl,0CEh 
        mov cx,15
        int 10h
        lea dx, invalid
        mov ah, 09h
        int 21h
        
        call newLine

    thank_you:
        lea dx, thanks
        call print

        mov ax, 4C00h
        int 21h
 
end start