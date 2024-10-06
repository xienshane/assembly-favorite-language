; Filename: EXER24.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date: September 22, 2024
; Description: Edit your Laboratory Prelim Hands-on Exam. Before the form displays,
;              ask the user to input all the needed data. Afterwards, display the
;              form with all the data entered by the user.

.MODEL small
.STACK 100h
.DATA
	desc 	db 13,10,10,10,'Filename: EXER24.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Vehicle Sticker (with inputs).',13,10
			db 'Date Created:  September 22, 2024',13,10,10,'$'
menu    db '                                                                         ', 13, 10
        db '                   Cebu Institute of Technology - University               ', 13, 10
        db '                       VEHICLE STICKER APPLICATION FORM                   ', 13, 10
        db '                        Please fill out the form below.                    ', 13, 10, 10
        db '   Personnel Type:                      V   Vehicle Sticker Type:           V ', 13, 10, 10
        db '   Name of Applicant/Driver:                ID Number:                      ', 13, 10, 10
        db '   Mobile Number:                           Address:                        ', 13, 10, 10
        db '   Vehicle Make(s)/Brand:                   Plate Number:                   ', 13, 10, 10
        db '   Vehicle Color:                       V   Vehicle Type:                   V ', 13, 10, 10, 10
        db '                                    SUBMIT                      ', 13, 10, 10
        db '                        Copyright 2024 LOVELY SHANE P. ONG      ', 13, 10, 10, 10
        db '                                  Thank You!            ', 13, 10, '$'

personnelType db 9, 0, 9 dup(0)     
applicantName db 14, 0, 14 dup(0)   
mobileNumber db 12, 0, 12 dup(0)
carMake db 12, 0, 12 dup(0)
carColor db 9, 0, 9 dup(0)
stickerType db 9, 0, 9 dup(0)
idNum db 12, 0, 12 dup(0)
address db 12, 0, 12 dup(0)
plateNumber db 12, 0, 12 dup(0)
carType db 9, 0, 9 dup(0)

row0 db 'Cebu Institute of Technology - University', 0dh, 0ah, '$'
row1 db 'VEHICLE STICKER APPLICATION FORM', 0dh, 0ah, '$'
row2 db 'Please enter the needed information:', 0dh, 0ah, '$'
row3 db 'Personnel Type: $'
row4 db 'Name of Applicant/Driver: $'
row5 db 'Mobile Number: $'
row6 db 'Vehicle Make(s)/Brand: $'
row7 db 'Vehicle Color: $'
row8 db 'Vehicle Sticker Type: $'
row9 db 'ID Number: $'
rowA db 'Address: $'
rowB db 'Plate Number: $'
rowC db 'Vehicle Type: $'

nxt DB 0dh, 0ah, '$'

.CODE

PrintString:
    MOV ah, 09h
    INT 21h
    RET

NextL:
    lea dx, nxt
    MOV ah, 09h
    INT 21h
    RET


inputForm proc

    lea dx, row0
    call PrintString

    lea dx, row1
    call PrintString

    lea dx, row2
    call PrintString
    call NextL

    lea dx, row3
    call PrintString
    lea dx, personnelType
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, row4
    call PrintString
    lea dx, applicantName
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, row5
    call PrintString
    lea dx, mobileNumber
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, row6
    call PrintString
    lea dx, carMake
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, row7
    call PrintString
    lea dx, carColor
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, row8
    call PrintString
    lea dx, stickerType
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, row9
    call PrintString
    lea dx, idNum
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, rowA
    call PrintString
    lea dx, address
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, rowB
    call PrintString
    lea dx, plateNumber
    mov ah, 0ah
    int 21h
    CALL NextL

    lea dx, rowC
    call PrintString
    lea dx, carType
    mov ah, 0ah
    int 21h
    CALL NextL

    RET

inputForm endp


main proc
    
    mov ax, @data ; db setup
    mov ds, ax
    lea dx, desc   
		mov ah, 09h   
		int 21h  

    call inputForm
    
    mov ah, 00h
    mov al, 03h   ; display setup
    int 10h
    call printForm
 
    ; personnelType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 5            ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt

; Print Personnel
    lea si, personnelType + 2  
    mov cl, [personnelType+1]  
PrintPersonnel:
    mov dl, [si]
    cmp dl, 0dh          
    je DonePersonnel
    mov ah, 02h          
    int 21h
    inc si
    loop PrintPersonnel
DonePersonnel:
    CALL NextL


    ; applicantName
    mov ah, 02h          
    mov bh, 00h          
    mov dh, 7         
    mov dl, 029         
    int 10h             

; Print Name
    lea si, applicantName + 2  
    mov cl, [applicantName+1]  
PrintName:
    mov dl, [si]
    cmp dl, 0dh          
    je DoneName
    mov ah, 02h          
    int 21h
    inc si
    loop PrintName
DoneName:
    CALL NextL


    ; mobileNumber
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 9            ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt
 
; Print Mobile Number
    lea si, mobileNumber + 2  
    mov cl, [mobileNumber+1]  
PrintNumber:
    mov dl, [si]
    cmp dl, 0dh          
    je DoneNumber
    mov ah, 02h          
    int 21h
    inc si
    loop PrintNumber
DoneNumber:
    CALL NextL
 
    ; carMake
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 11           ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt
 
    ; Print car make
    lea si, carMake + 2  
    mov cl, [carMake+1]  
PrintMake:
    mov dl, [si]
    cmp dl, 0dh          
    je DoneMake
    mov ah, 02h          
    int 21h
    inc si
    loop PrintMake
DoneMake:
    CALL NextL
 
    ; carColor
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 13           ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt
 
    ; Print car color
    lea si, carColor + 2  
    mov cl, [carColor+1]  
PrintColor:
    mov dl, [si]
    cmp dl, 0dh          
    je DoneColor
    mov ah, 02h          
    int 21h
    inc si
    loop PrintColor
DoneColor:
    CALL NextL
 
    ; stickerType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 5            ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt
 
    ; Print sticker type
    lea si, stickerType + 2  
    mov cl, [stickerType+1]  
PrintSticker:
    mov dl, [si]
    cmp dl, 0dh          
    je DoneSticker
    mov ah, 02h          
    int 21h
    inc si
    loop PrintSticker
DoneSticker:
    CALL NextL
 
    ; idNum
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 7            ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt
 
    ; Print ID Number
    lea si, idNum + 2  
    mov cl, [idNum+1]  
PrintID:
    mov dl, [si]
    cmp dl, 0dh          
    je DoneID
    mov ah, 02h          
    int 21h
    inc si
    loop PrintID
DoneID:
    CALL NextL
 
    ; address
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 9            ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt
 
; Print Address
    lea si, address + 2  
    mov cl, [address+1]  
PrintAddress:
    mov dl, [si]
    cmp dl, 0dh          
    je DoneAddress
    mov ah, 02h          
    int 21h
    inc si
    loop PrintAddress
DoneAddress:
    CALL NextL
 
    ; plateNumber
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 11           ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt
 
    ; Print Plate Number
    lea si, plateNumber + 2  
    mov cl, [plateNumber+1]  
PrintPlate:
    mov dl, [si]
    cmp dl, 0dh          
    je DonePlate
    mov ah, 02h          
    int 21h
    inc si
    loop PrintPlate
DonePlate:
    CALL NextL
 
    ; carType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 13           ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt
 
    ; Print Car type
    lea si, carType + 2  
    mov cl, [carType+1]  
PrintType:
    mov dl, [si]
    cmp dl, 0dh          
    je DoneType
    mov ah, 02h          
    int 21h
    inc si
    loop PrintType
DoneType:
 
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 21           ; Row (0-based)
    mov dl, 80           ; Column (0-based)
    int 10h              ; Call BIOS interrupt
    
    mov ax, 4C00h ; return 0
    int 21h  
    
main endp

printForm proc
 
    xor al, al
    
    ; Grey BG
    mov ah, 06h
    mov ch, 1 ; row start
    mov cl, 2 ; col start
    mov dh, 19  ; row end
    mov dl, 78  ; col end
    mov bh, 70h ; grey bg with black text
    int 10h
    
    ; header red bg
    mov ah, 06h
    mov ch, 1
    mov cl, 3
    mov dh, 3   
    mov dl, 77  
    mov bh, 4fh ; red bg with white text
    int 10h
    ; header yellow blink line
    mov ah, 06h
    mov ch, 3
    mov cl, 3
    mov dh, 3   
    mov dl, 77  
    mov bh, 0ceh ; red bg with yellow blinking text
    int 10h
    
 
    ; black bg left
    mov ah, 06h
    mov ch, 5
    mov cl, 29
    mov dh, 5
    mov dl, 41
    mov bh, 0fh ; black bg with white text
    int 10h
    ; black bg right
    mov ah, 06h
    mov ch, 5
    mov cl, 66
    mov dh, 5
    mov dl, 77
    mov bh, 0fh ; black bg with white text
    int 10h

    ; black bg left
    mov ah, 06h
    mov ch, 7
    mov cl, 29
    mov dh, 7
    mov dl, 41
    mov bh, 0fh ; black bg with white text
    int 10h
    ; black bg right
    mov ah, 06h
    mov ch, 7
    mov cl, 66
    mov dh, 7
    mov dl, 77
    mov bh, 0fh ; black bg with white text
    int 10h
   
   ; black bg left
    mov ah, 06h
    mov ch, 9
    mov cl, 29
    mov dh, 9
    mov dl, 41
    mov bh, 0fh ; black bg with white text
    int 10h
    ; black bg right
    mov ah, 06h
    mov ch, 9
    mov cl, 66
    mov dh, 9
    mov dl, 77
    mov bh, 0fh ; black bg with white text
    int 10h

    ; black bg left
    mov ah, 06h
    mov ch, 9
    mov cl, 29
    mov dh, 9
    mov dl, 41
    mov bh, 0fh ; black bg with white text
    int 10h
    ; black bg right
    mov ah, 06h
    mov ch, 9
    mov cl, 66
    mov dh, 9
    mov dl, 77
    mov bh, 0fh ; black bg with white text
    int 10h

    ; black bg left
    mov ah, 06h
    mov ch, 11
    mov cl, 29
    mov dh, 11
    mov dl, 41
    mov bh, 0fh ; black bg with white text
    int 10h
    ; black bg right
    mov ah, 06h
    mov ch, 11
    mov cl, 66
    mov dh, 11
    mov dl, 77
    mov bh, 0fh ; black bg with white text
    int 10h

    ; black bg left
    mov ah, 06h
    mov ch, 13
    mov cl, 29
    mov dh, 13
    mov dl, 41
    mov bh, 0fh ; black bg with white text
    int 10h
    ; black bg right
    mov ah, 06h
    mov ch, 13
    mov cl, 66
    mov dh, 13
    mov dl, 77
    mov bh, 0fh ; black bg with white text
    int 10h

    ; Upper Left V
    mov ah, 06h
    mov ch, 5
    mov cl, 39
    mov dh, 5
    mov dl, 41
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Upper Right V
    mov ah, 06h
    mov ch, 5
    mov cl, 75
    mov dh, 5
    mov dl, 77
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Lower Right V
    mov ah, 06h
    mov ch, 13
    mov cl, 39
    mov dh, 13
    mov dl, 41
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Lower Left V
    mov ah, 06h
    mov ch, 13
    mov cl, 75
    mov dh, 13
    mov dl, 77
    mov bh, 4fh ; red bg with white text
    int 10h
 
    
    ; Red BG Submit Button
    mov ah, 06h
    mov ch, 16
    mov cl, 35
    mov dh, 16
    mov dl, 42
    mov bh, 4eh ; red bg with yellow text
    int 10h
    
    ; Blinking Yellow thankyou
    mov ah, 06h
    mov ch, 21
    mov cl, 0
    mov dh, 21
    mov dl, 78
    mov bh, 8eh
    int 10h
    
    ; print
    mov ah, 09h
    mov dx, offset menu
    int 21h
 
    ret
 
printForm endp
 

end main

