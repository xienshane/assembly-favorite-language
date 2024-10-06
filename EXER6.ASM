;Filename: EXER6.ASM
;Displays a blinking i love you
;Name: LOVELY SHANE P. ONG
;Date: August 30, 2024

.model small
.stack 100h
.data
	desc 	db 13,10,10,10,'Filename: EXER6.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Displays a blinking i love you.',13,10
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

	;blinking
	mov ah,09h
	mov bl,8Eh
	mov cx,1
	int 10h
	
	;I
	mov ah,02h
	mov cl,49h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;blinking red
	mov ah,09h
	mov bl,84h
	mov cx,1
	int 10h
	
	;red heart
	mov ah,02h
	mov dl,03h
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;blinking
	mov ah,09h
	mov bl,8Eh
	mov cx,1
	int 10h
	
	;U
	mov ah,02h
	mov cl,55h
	mov dl,cl
	int 21h
	
	
end start