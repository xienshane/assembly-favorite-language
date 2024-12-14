; a. Filename: FINAL.ASM
; b.CS243 Lab Hands-on Final Exam
; c.First Semester SY 2024-2025
; d.Student Name: LOVELY SHANE P. ONG
; e.Date Finished: DECEMBER 13, 2024
 
.model small
.stack 100h
.data  
    ;opening screen
header  db 10,13,'Cebu Institute of Technology - University',10,13
        db 'College of Computer Studies', 10,13
        db 'FAVORITE CLASSMATE VOTING SYSTEM',10,13
        db 'Programmer: LOVELY SHANE P. ONG', 10, 13, 10, 13, '$'
 
    menuPrompt  db'MAIN MENU',13,10,'$'
    menuPrompt1 db '1. Vote',13,10,'$'
    menuPrompt2 db '2. View',13,10,'$'
    menuPrompt3 db '3. Update',13,10,'$'
    menuPrompt4 db '4. Delete',13,10,'$'
    menuPrompt5 db '5. Exit$'
    menuPrompt6 db 0ah,'Enter choice: $'
    userChoice  db ?
 
    editPrompt db 10,13,'Enter record number to update: ','$'
    deletePrompt db 10,13,'Enter record number to delete: ','$'
    deleted db 0ah, 0ah, 'Record deleted.', '$'
    itemNumber   db ?
 
    ; PROMPT ITEM NAME
    itemNamePrompt1 db 10,13,'Enter Candidate name: $'
    itemNamePrompt2 db 10,13,'Enter Candidate name: $'
    itemNamePrompt3 db 10,13,'Enter Candidate name: $'
    itemNamePrompt4 db 10,13,'Enter Candidate name: $'
    itemNamePrompt5 db 10,13,'Enter Candidate name: $'
 
    ; USERINPUT ITEM NAME
    itemNameInput1 db 50, ?, 50 dup(' ')
    itemNameInput2 db 50, ?, 50 dup(' ')
    itemNameInput3 db 50, ?, 50 dup(' ')
    itemNameInput4 db 50, ?, 50 dup(' ')
    itemNameInput5 db 50, ?, 50 dup(' ')
 
    ; PROMPT ITEM PRICE
    ratingPrompt db 0ah,'Enter vote rating (1 - 100): $'
    back2main db 0ah,0ah , 'Press any key to go back to Main Menu.... $'
 
    ; USERINPUT ITEM PRICE
    ratingInput1 db 50, ?, 50 dup(' ')
    ratingInput2 db 50, ?, 50 dup(' ')
    ratingInput3 db 50, ?, 50 dup(' ')
    ratingInput4 db 50, ?, 50 dup(' ')
    ratingInput5 db 50, ?, 50 dup(' ')
 
    ;PRICE & QUANTITY DISPLAY
    price_msg DB ' - '
 
 
    outputHeader1 db 'Vote',13,10,'$'
    outputHeader2 db 'View',13,10,'$'
    outputHeader3 db 'Update',13,10,'$'
    outputHeader4 db 'Delete',13,10,'$'
 
    outputItemName1 db 0ah,'1: $'
    outputItemName2 db 0ah,'2: $'
    outputItemName3 db 0ah,'3: $'
    outputItemName4 db 0ah,'4: $'
    outputItemName5 db 0ah,'5: $'
 
    footer     db 0ah,0ah, 'Exiting.....'
               db 0ah, 'Thank you for using Favorite Classmate Voting Sysem.', 0ah, 0ah, 0ah, '$'
 
.code
start:
    mov ax, @data
    mov ds, ax
 
    mov ax, 3
    int 10h
   
    mov ah, 06h
    xor al, al
    xor cx, cx
    int 10h
 
    lea dx, header
    mov ah, 9
    int 21h
 
mainMenu:
    mov ax, 3
    int 10h
   
   
main_Menu:
 
    lea dx, header
    mov ah, 9
    int 21h
    mov ax, 1003h
    mov bx, 0 ; disable blinking.
    int 10h    
    lea dx, menuPrompt
    mov ah, 9
    int 21h
 
 
    mov ah,09h
    mov bl,0DFh  ;gotta change
    mov cx,7  
    int 10h    
    lea dx, menuPrompt1
    mov ah, 9
    int 21h
 
    mov ah,09h
    mov bl,5Fh  ;gotta change
    mov cx,7
    int 10h
    lea dx, menuPrompt2
    mov ah, 9
    int 21h
 
 
    mov ah,09h
    mov bl,3Fh   ;gotta change
    mov cx,9
    int 10h    
    lea dx, menuPrompt3
    mov ah, 9
    int 21h
 
 
    mov ah,09h
    mov bl,09Fh  ;gotta change
    mov cx,9
    int 10h    
    lea dx, menuPrompt4
    mov ah, 9
    int 21h
 
 
    lea dx, menuPrompt5
    mov ah, 9
    int 21h
 
     lea dx, menuPrompt6
    mov ah, 9
    int 21h
 
 
    mov ah, 1              
    int 21h                    
    mov userChoice, al
 
    cmp userChoice, '1'
    je CreateItemsList
    cmp userChoice, '2'
    je ViewItemsList
    cmp userChoice, '3'
    je EditItemsList
    cmp userChoice, '4'
    je DeleteItemsList
    cmp userChoice, '5'
    je Exit_Program
 
    jmp mainMenu
 
CreateItemsList:
    mov ax, 3
    int 10h
 
    call createItem
 
    lea dx, back2main
    mov ah, 9
    int 21h
    ;wait for enter key
    MOV AH, 01H            
    INT 21H
 
    mov ax, 3
    int 10h
 
    jmp mainMenu
 
ViewItemsList:
    mov ax, 3
    int 10h
 
    call viewItems
 
    lea dx, back2main
    mov ah, 9
    int 21h
    ;wait for enter key
    MOV AH, 01H            
    INT 21H
 
    mov ax, 3
    int 10h
 
    jmp main_Menu
 
EditItemsList:
    mov ax, 3
    int 10h
 
 
    call editItem
 
    lea dx, back2main
    mov ah, 9
    int 21h
    ;wait for enter key
    MOV AH, 01H            
    INT 21H
 
    mov ax, 3
    int 10h
    jmp mainMenu
 
DeleteItemsList:
    mov ax, 3
    int 10h
 
    call deleteItem
 
    lea dx, back2main
    mov ah, 9
    int 21h
    ;wait for enter key
    MOV AH, 01H            
    INT 21H
 
    mov ax, 3
    int 10h
 
    jmp mainMenu
 
Exit_Program:
    mov ax, 3
    int 10h
 
    call exitProgram
 
 
;----------------get inputs--------------------
createItem:
mov  ah, 09h
lea  dx, header
int  21h
     mov ax, 1003h
    mov bx, 0 ; disable blinking.
    int 10h  
    mov ah,09h
    mov bl,0E0h  
    mov cx,4  
    int 10h  
 
mov  ah, 09h
lea  dx, outputHeader1
int  21h
    ;item1
    call enterName1
 
    ;item2
    call enterName2
 
    ;item3
    call enterName3
 
    ;item4
    call enterName4
 
    ;item5
    call enterName5
    ret
 
;---------------summary output-------------
viewItems:
 
mov  ah, 09h
lea  dx, header
int  21h
     mov ax, 1003h
    mov bx, 0 ; disable blinking.
    int 10h  
   mov ah,09h
    mov bl,0C0h
    mov cx,4
    int 10h
 
    lea dx, outputHeader2
    mov ah, 9
    int 21h
       
    ; item1
    lea dx, outputItemName1
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput1[1]
    mov itemNameInput1[bx+2], '$'
    lea dx, itemNameInput1 + 2
    mov ah, 09h
    int 21h
   
    ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput1[1]
    mov ratingInput1[bx+2], '$'
    lea dx, ratingInput1 + 2
    mov ah, 09h
    int 21h
 
    ; item2
lea dx, outputItemName2
mov ah, 9
int 21h
 
xor bx, bx
mov bl, itemNameInput2[1]
mov itemNameInput2[bx+2], '$'        ; Add '$' at the correct position
lea dx, itemNameInput2 + 2
mov ah, 9
int 21h                              ; Print item name
 
; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
xor bx, bx
mov bl, ratingInput2[1]
mov ratingInput2[bx+2], '$'          ; Add '$' at the correct position
lea dx, ratingInput2 + 2
mov ah, 9
int 21h                              ; Print rating
   
    ;item3
    lea dx, outputItemName3
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput3[1]
    mov itemNameInput3[bx+2], '$'
    lea dx, itemNameInput3 + 2
    mov ah, 09h
    int 21h
 
  ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput3[1]
    mov ratingInput3[bx+2], '$'
    lea dx, ratingInput3 + 2
    mov ah, 09h
    int 21h
 
    ;item4
    lea dx, outputItemName4
    mov ah, 9
    int 21h
   
    xor bx, bx
    mov bl, itemNameInput4[1]
    mov itemNameInput4[bx+2], '$'
    lea dx, itemNameInput4 + 2
    mov ah, 09h
    int 21h
 
  ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput4[1]
    mov ratingInput4[bx+2], '$'
    lea dx, ratingInput4 + 2
    mov ah, 09h
    int 21h
 
    ;item5
    lea dx, outputItemName5
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput5[1]
    mov itemNameInput5[bx+2], '$'
    lea dx, itemNameInput5 + 2
    mov ah, 09h
    int 21h
 
  ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput5[1]
    mov ratingInput5[bx+2], '$'
    lea dx, ratingInput5 + 2
    mov ah, 09h
    int 21h
 
    ret
 
;-------------------update items---------------
editItem:
mov  ah, 09h
lea  dx, header
int  21h
 
     mov ax, 1003h
    mov bx, 0 ; disable blinking.
    int 10h  
    mov ah,09h
    mov bl,0A0h
    mov cx,6
    int 10h  
mov  ah, 09h
lea  dx, outputHeader3
int  21h
 
    lea dx, outputItemName1
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput1[1]
    mov itemNameInput1[bx+2], '$'
    lea dx, itemNameInput1 + 2
    mov ah, 09h
    int 21h
 
    ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput1[1]
    mov ratingInput1[bx+2], '$'
    lea dx, ratingInput1 + 2
    mov ah, 09h
    int 21h
 
    ; item2
lea dx, outputItemName2
mov ah, 9
int 21h
 
xor bx, bx
mov bl, itemNameInput2[1]
mov itemNameInput2[bx+2], '$'        ; Add '$' at the correct position
lea dx, itemNameInput2 + 2
mov ah, 9
int 21h                              ; Print item name
 
; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
xor bx, bx
mov bl, ratingInput2[1]
mov ratingInput2[bx+2], '$'          ; Add '$' at the correct position
lea dx, ratingInput2 + 2
mov ah, 9
int 21h                              ; Print rating
 
 
   
    ;item3
    lea dx, outputItemName3
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput3[1]
    mov itemNameInput3[bx+2], '$'
    lea dx, itemNameInput3 + 2
    mov ah, 09h
    int 21h
 
 ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput3[1]
    mov ratingInput3[bx+2], '$'
    lea dx, ratingInput3 + 2
    mov ah, 09h
    int 21h
 
    ;item4
    lea dx, outputItemName4
    mov ah, 9
    int 21h
   
    xor bx, bx
    mov bl, itemNameInput4[1]
    mov itemNameInput4[bx+2], '$'
    lea dx, itemNameInput4 + 2
    mov ah, 09h
    int 21h
 
 ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput4[1]
    mov ratingInput4[bx+2], '$'
    lea dx, ratingInput4 + 2
    mov ah, 09h
    int 21h
 
    ;item5
    lea dx, outputItemName5
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput5[1]
    mov itemNameInput5[bx+2], '$'
    lea dx, itemNameInput5 + 2
    mov ah, 09h
    int 21h
 
 ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput5[1]
    mov ratingInput5[bx+2], '$'
    lea dx, ratingInput5 + 2
    mov ah, 09h
    int 21h
 
    lea dx, editPrompt
    mov ah, 9
    int 21h
 
    mov ah, 1                
    int 21h
    mov itemNumber, al      
 
    cmp itemNumber, '1'        
    je enterName1          
   
    cmp itemNumber, '2'        
    je enterName2            
   
    cmp itemNumber, '3'        
    je enterName3  
 
    cmp itemNumber, '4'        
    je enterName4          
   
    cmp itemNumber, '5'        
    je enterName5          
   
    ret                      
 
 
;-------------------storing item names---------------
enterName1:
    lea dx, itemNamePrompt1
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemNameInput1
    int 21h
   
    call enterPrice1
   
    ret
 
enterName2:
    lea dx, itemNamePrompt2
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemNameInput2
    int 21h
 
    call enterPrice2
 
    ret
 
enterName3:
    lea dx, itemNamePrompt3
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemNameInput3
    int 21h
 
    call enterPrice3
 
    ret
 
enterName4:
    lea dx, itemNamePrompt4
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemNameInput4
    int 21h
 
   
    call enterPrice4
 
    ret
 
enterName5:
    lea dx, itemNamePrompt5
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, itemNameInput5
    int 21h
 
    call enterPrice5
    ret
 
enterPrice1:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, ratingInput1
    int 21h
    ret
 
enterPrice2:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, ratingInput2
    int 21h
    ret
 
enterPrice3:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, ratingInput3
    int 21h
    ret
 
enterPrice4:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, ratingInput4
    int 21h
    ret
 
enterPrice5:
    lea dx, ratingPrompt
    mov ah, 9
    int 21h            
 
    mov ah, 0Ah
    lea dx, ratingInput5
    int 21h
    ret
 
 
;-------------------delete items----------------
deleteItem:
mov  ah, 09h
lea  dx, header
int  21h
     mov ax, 1003h
    mov bx, 0 ; disable blinking.
    int 10h  
    mov ah,09h
    mov bl,090h
    mov cx,6
    int 10h    
 
mov  ah, 09h
lea  dx, outputHeader4
int  21h
 
;item1
    lea dx, outputItemName1
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput1[1]
    mov itemNameInput1[bx+2], '$'
    lea dx, itemNameInput1 + 2
    mov ah, 09h
    int 21h
 
 ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput1[1]
    mov ratingInput1[bx+2], '$'
    lea dx, ratingInput1 + 2
    mov ah, 09h
    int 21h
 
    ; item2
lea dx, outputItemName2
mov ah, 9
int 21h
 
xor bx, bx
mov bl, itemNameInput2[1]
mov itemNameInput2[bx+2], '$'        ; Add '$' at the correct position
lea dx, itemNameInput2 + 2
mov ah, 9
int 21h                              ; Print item name
 
; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
xor bx, bx
mov bl, ratingInput2[1]
mov ratingInput2[bx+2], '$'          ; Add '$' at the correct position
lea dx, ratingInput2 + 2
mov ah, 9
int 21h                              ; Print rating
 
   
    ;item3
    lea dx, outputItemName3
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput3[1]
    mov itemNameInput3[bx+2], '$'
    lea dx, itemNameInput3 + 2
    mov ah, 09h
    int 21h
 
 ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput3[1]
    mov ratingInput3[bx+2], '$'
    lea dx, ratingInput3 + 2
    mov ah, 09h
    int 21h
 
    ;item4
    lea dx, outputItemName4
    mov ah, 9
    int 21h
   
    xor bx, bx
    mov bl, itemNameInput4[1]
    mov itemNameInput4[bx+2], '$'
    lea dx, itemNameInput4 + 2
    mov ah, 09h
    int 21h
 
 ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput4[1]
    mov ratingInput4[bx+2], '$'
    lea dx, ratingInput4 + 2
    mov ah, 09h
    int 21h
 
    ;item5
    lea dx, outputItemName5
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, itemNameInput5[1]
    mov itemNameInput5[bx+2], '$'
    lea dx, itemNameInput5 + 2
    mov ah, 09h
    int 21h
 
 ; Add a space before the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
     ; Add the dash
        mov dl, '-'                  ; Dash character
         mov ah, 02h                  ; Display character function
        int 21h
 
    ; Add a space after the dash
        mov dl, ' '              ; Space character (ASCII 32)
        mov ah, 02h              ; Display character function
        int 21h
 
    xor bx, bx
    mov bl, ratingInput5[1]
    mov ratingInput5[bx+2], '$'
    lea dx, ratingInput5 + 2
    mov ah, 09h
    int 21h
 
   
 lea dx, deletePrompt
    mov ah, 9
    int 21h
 
    ; Get item number to delete
    mov ah, 1
    int 21h
    mov itemNumber, al
 
    ; Based on number, clear the corresponding input
    cmp itemNumber, '1'
    je clearItem1
    cmp itemNumber, '2'
    je clearItem2
    cmp itemNumber, '3'
    je clearItem3
    cmp itemNumber, '4'
    je clearItem4
    cmp itemNumber, '5'
    je clearItem5
 
   
 
    ret
 
clearItem1:
    lea dx, itemNameInput1
    mov ah, 0Ah
    lea dx, itemNameInput1
    mov byte ptr [itemNameInput1], 50
    mov byte ptr [itemNameInput1 + 1], 0
 
    call clearPrice1
   
    ret
 
clearItem2:
    lea dx, itemNameInput2
    mov ah, 0Ah
    lea dx, itemNameInput2
    mov byte ptr [itemNameInput2], 100
    mov byte ptr [itemNameInput2 + 1], 0
 
    call clearPrice2
    ret
 
clearItem3:
    lea dx, itemNameInput3
    mov ah, 0Ah
    lea dx, itemNameInput3
    mov byte ptr [itemNameInput3], 100
    mov byte ptr [itemNameInput3 + 1], 0
 
    call clearPrice3
    ret
 
clearItem4:
    lea dx, itemNameInput4
    mov ah, 0Ah
    lea dx, itemNameInput4
    mov byte ptr [itemNameInput4], 100
    mov byte ptr [itemNameInput4 + 1], 0
 
    call clearPrice4
    ret
 
clearItem5:
    lea dx, itemNameInput5
    mov ah, 0Ah
    lea dx, itemNameInput5
    mov byte ptr [itemNameInput5], 100
    mov byte ptr [itemNameInput5 + 1], 0
 
    call clearPrice5
    ret
 
clearPrice1:
    lea dx, ratingInput1
    mov ah, 0Ah
    lea dx, ratingInput1
    mov byte ptr [ratingInput1], 50
    mov byte ptr [ratingInput1 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
clearPrice2:
    lea dx, ratingInput2
    mov ah, 0Ah
    lea dx, ratingInput2
    mov byte ptr [ratingInput2], 50
    mov byte ptr [ratingInput2 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
clearPrice3:
    lea dx, ratingInput3
    mov ah, 0Ah
    lea dx, ratingInput3
    mov byte ptr [ratingInput3], 50
    mov byte ptr [ratingInput3 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
clearPrice4:
    lea dx, ratingInput4
    mov ah, 0Ah
    lea dx, ratingInput4
    mov byte ptr [ratingInput4], 50
    mov byte ptr [ratingInput4 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
clearPrice5:
    lea dx, ratingInput5
    mov ah, 0Ah
    lea dx, ratingInput5
    mov byte ptr [ratingInput5], 50
    mov byte ptr [ratingInput5 + 1], 0
 
    lea dx, deleted
    mov ah, 9
    int 21h
 
    ret
 
;----------------------end prog-----------------
exitProgram:
    lea dx, footer
    mov ah, 09h
    int 21h
 
    mov ah, 4Ch
    int 21h
 
end start
