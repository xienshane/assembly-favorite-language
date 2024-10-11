; Filename: MIDTERM.ASM
; CS243 Lab Hands-on Midterm Exam
; First Semester SY 2024-2025
; Student Name: LOVELY SHANE P. ONG
; Date Finished: 10/11/2024
 
.model small
.stack 100h
.data
 
    p1 db " Online Grocery Order Form", 13,10, '$'
    p2 db ' Programmer: LOVELY SHANE P. ONG', 13, 10, '$'
    p3 db ' Date: 10/11/2024', 13, 10, 10, '$'
    prompt1 db ' Please enter your 5 grocery items:', 13, 10, '$'
    item1 db ' Item No. 1: $'
    item2 db 13, 10, ' Item No. 2: $'
    item3 db 13, 10, ' Item No. 3: $'
    item4 db 13, 10, ' Item No. 4: $'
    item5 db 13, 10, ' Item No. 5: $'
    item1copy  db '   Item No. 1: $'
    item2copy  db 13, 10, '   Item No. 2: $'
    item3copy  db 13, 10, '   Item No. 3: $'
    item4copy  db 13, 10, '   Item No. 4: $'
    item5copy  db 13, 10, '   Item No. 5: $'
    itemInput1 db 50 dup('$')
    itemInput2 db 50 dup('$')
    itemInput3 db 50 dup('$')
    itemInput4 db 50 dup('$')
    itemInput5 db 50 dup('$')
    space db '   $'
    prompt2 db '             ORDER SUMMARY      ', 13, 10, '$'
    newline db 13, 10, 10, 10, '$'
    prompt3 db 13,10,10,10,' Thank you for shopping!$'
    prompt4 db 13,10, ' Order again soon.', 13, 10, 10, '$'
   
.code
   
main:
    mov ax, @data
    mov ds, ax
    mov ax, 3
    int 10h
    xor al, al
    lea dx, p1
    call print
    lea dx, p2
    call print
    lea dx, p3
    call print
    lea dx, prompt1
    call print
    lea dx, item1
    call print
    lea dx, itemInput1
    call scan
    lea dx, item2
    call print
    lea dx, itemInput2
    call scan
    lea dx, item3
    call print
    lea dx, itemInput3
    call scan
    lea dx, item4
    call print
    lea dx, itemInput4
    call scan
    lea dx, item5
    call print
    lea dx, itemInput5
    call scan
    lea dx, newline
    call print
 
    mov ah, 06h
    mov ch, 11 
    mov cl, 1 
    mov dh, 18
    mov dl, 40  
    mov bh, 70h
    int 10h
 
    mov ah, 06h
    mov ch, 12
    mov cl, 2 
    mov dh, 12
    mov dl, 39
    mov bh, 4Eh 
    int 10h
 
    mov ah, 06h
    mov ch, 14 
    mov cl, 2 
    mov dh, 14  
    mov dl, 39  
    mov bh, 030h 
    int 10h
 
    mov ah, 06h
    mov ch, 16 
    mov cl, 2 
    mov dh, 16 
    mov dl, 39  
    mov bh, 030h
    int 10h
 
    mov ah, 06h
    mov ch, 21 
    mov cl, 1 
    mov dh, 21  
    mov dl, 17  
    mov bh, 0Ceh 
    int 10h
 
    mov ah, 06h
    mov ch, 13 
    mov cl, 16 
    mov dh, 17  
    mov dl, 16  
    mov bh, 00h 
    int 10h
 
    lea dx, prompt2
    call print
   
    lea dx, item1copy
    call print
    lea dx, space
    call print
    lea dx, itemInput1+2
    call print
 
    lea dx, item2copy
    call print
    lea dx, space
    call print
    lea dx, itemInput2+2
    call print
 
    lea dx, item3copy
    call print
    lea dx, space
    call print
    lea dx, itemInput3+2
    call print
 
    lea dx, item4copy
    call print
    lea dx, space
    call print
    lea dx, itemInput4+2
    call print
 
    lea dx, item5copy
    call print
    lea dx, space
    call print
    lea dx, itemInput5+2
    call print
 
    lea dx, prompt3
    call print
    lea dx, prompt4
    call print
 
    mov ax, 4C00h
    int 21h
 
    print PROC
    mov ah, 09h
    int 21h
    ret
    print ENDP
   
    scan PROC
    mov ah, 0AH
    int 21h
    ret
    scan ENDP
 
end main