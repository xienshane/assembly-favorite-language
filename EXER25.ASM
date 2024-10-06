; Filename: EXER25.ASM
; Programmer Name: LOVELY SHANE P. ONG
; Date : September 28, 2024
; Description: This assembly language program will get 3 string inputs and
; display back the 3 strings on separate lines.

.model small
.stack 100h
.data
	desc 	db 13,10,10,10,'Filename: EXER25.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: get 3 string inputs and display back the 3 strings on separate lines.',13,10
			db 'Date Created:  August 30, 2024',13,10,10,'$'
    inputString1 db 50 DUP('$') ; Reserve 50 bytes for input string
    inputString2 db 50 DUP('$')
    inputString3 db 50 DUP('$')
    promptString1 db 'Enter first string: $'
    promptString2 db 'Enter second string: $'
    promptString3 db 'Enter third string: $'
    outputString1 db 'You entered first string: $'
    outputString2 db 'You entered second string: $'
    outputString3 db 'You entered third string: $'
.code
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    lea dx, desc   
		mov ah, 09h   
		int 21h  
    ; Prompt the user for input first string
    LEA DX, promptString1
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; Read input first string
    LEA DX, inputString1
    MOV AH, 0Ah ; DOS function to read a string
    INT 21h

    ; this is for displaying new line
    mov ah,02h
    mov cl,0Ah ; 0Ah is new line
    mov dl,cl
    int 21h

    ; Prompt the user for input second string
    LEA DX, promptString2
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; Read input second string
    LEA DX, inputString2
    MOV AH, 0Ah ; DOS function to read a string
    INT 21h

    ; this is for displaying new line
    mov ah,02h
    mov cl,0Ah ; 0Ah is new line
    mov dl,cl
    int 21h

    ; Prompt the user for input third string
    LEA DX, promptString3
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; Read input third string
    LEA DX, inputString3
    MOV AH, 0Ah ; DOS function to read a string
    INT 21h

    ; this is for displaying new line
    mov ah,02h
    mov cl,0Ah ; 0Ah is new line
    mov dl,cl
    int 21h

    ; Display the output message for first string
    LEA DX, outputString1
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; Display the entered first string
    LEA DX, inputString1 + 2 ; Skip the first two bytes (length and max length)
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; this is for displaying new line
    mov ah,02h
    mov cl,0Ah ; 0Ah is new line
    mov dl,cl
    int 21h

    ; Display the output message for second string
    LEA DX, outputString2
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; Display the entered second string
    LEA DX, inputString2 + 2 ; Skip the first two bytes (length and max length)
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; this is for displaying new line
    mov ah,02h
    mov cl,0Ah ; 0Ah is new line
    mov dl,cl
    int 21h

    ; Display the output message for third string
    LEA DX, outputString3
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; Display the entered third string
    LEA DX, inputString3 + 2 ; Skip the first two bytes (length and max length)
    MOV AH, 09h ; DOS function to display a string
    INT 21h

    ; Exit program
    MOV AX, 4C00h ; DOS function to terminate program
    INT 21h
MAIN ENDP
END MAIN