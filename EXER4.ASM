; Filename: EXER4.ASM
; Displaying single characters, numbers, and symbols
; LOVELY SHANE P. ONG
; Date: August 30, 2024

.model small
.stack 100h
.data
	desc 	db 13,10,10,10,'Filename: EXER4.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Displays college of computer studies with colors.',13,10
			db 'Date Created:  August 30, 2024',13,10,10,'$'
		; mov ax, @data
		; mov ds, ax
		; lea dx, desc   
		; mov ah, 09h   
		; int 21h
		; mov ax, 4C00h
		; int 21h
.code
start:
	mov ax, @data
		mov ds, ax
		
		lea dx, desc   
		mov ah, 09h   
		int 21h
	;college color
	mov ah,09h
	mov bl,73h
	mov cx,7
	int 10h
	
	;C
	mov ah,02h
	mov cl,43h
	mov dl,cl
	int 21h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;L
	mov ah,02h
	mov cl,6Ch
	mov dl,cl
	int 21h
	 
	;L
	mov ah,02h
	mov cl,6Ch
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;G
	mov ah,02h
	mov cl,67h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;of color
	mov ah,09h
	mov bl,3Eh
	mov cx,2
	int 10h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;F
	mov ah,02h
	mov cl,66h
	mov dl,cl
	int 21h
	 
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;Computer color
	mov ah,09h
	mov bl,27h
	mov cx,8
	int 10h
	 
	;C
	mov ah,02h
	mov cl,43h
	mov dl,cl
	int 21h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;M
	mov ah,02h
	mov cl,6Dh
	mov dl,cl
	int 21h
	 
	;P
	mov ah,02h
	mov cl,70h
	mov dl,cl
	int 21h
	 
	;U
	mov ah,02h
	mov cl,75h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;R
	mov ah,02h
	mov cl,72h
	mov dl,cl
	int 21h
	 
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;Studies color
	mov ah,09h
	mov bl,64h
	mov cx,7
	int 10h
	 
	;S
	mov ah,02h
	mov cl,53h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	 
	;U
	mov ah,02h
	mov cl,75h
	mov dl,cl
	int 21h
	 
	;D
	mov ah,02h
	mov cl,64h
	mov dl,cl
	int 21h
	 
	;I
	mov ah,02h
	mov cl,69h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;S
	mov ah,02h
	mov cl,73h
	mov dl,cl
	int 21h
	
end start
