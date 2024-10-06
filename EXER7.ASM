;Filename: EXER7.ASM
;Displaying single characters, numbers, and symbols
;LOVELY SHANE P. ONG
;Date: August 30, 2024

.model small
.stack 100h
.data
	desc 	db 13,10,10,10,'Filename: EXER7.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Displays a blinking eyes pixelart.',13,10
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
	; 1 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 2 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 3 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Blue color pixel
	mov ah,09h
	mov bl,11h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Blue color pixel
	mov ah,09h
	mov bl,11h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 4 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Blue color pixel
	mov ah,09h
	mov bl,11h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Blue color pixel
	mov ah,09h
	mov bl,11h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 5 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Blue color pixel
	mov ah,09h
	mov bl,11h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;Red color pixel
	mov ah,09h
	mov bl,84h
	mov cx,1
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;Red color pixel
	mov ah,09h
	mov bl,84h
	mov cx,2
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Red color pixel
	mov ah,09h
	mov bl,84h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Red color pixel
	mov ah,09h
	mov bl,84h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Blue color pixel
	mov ah,09h
	mov bl,11h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 6 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Red color pixel
	mov ah,09h
	mov bl,84h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Red color pixel
	mov ah,09h
	mov bl,84h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Red color pixel
	mov ah,09h
	mov bl,84h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Red color pixel
	mov ah,09h
	mov bl,84h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 7 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 8 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 9 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 10 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Yellow color pixel
	mov ah,09h
	mov bl,66h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 11 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Green color pixel
	mov ah,09h
	mov bl,22h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Green color pixel
	mov ah,09h
	mov bl,22h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

	; 12 row
	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;White color pixel
	mov ah,09h
	mov bl,77h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;Black color pixel
	mov ah,09h
	mov bl,00h
	mov cx,2
	int 10h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h

	;New Line

	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h

end start

