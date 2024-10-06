; Filename: EXER5.ASM
; Displaying single characters, numbers, and symbols
; LOVELY SHANE P. ONG
; Date: August 30, 2024

.model small
.stack 100h
.data
	desc 	db 13,10,10,10,'Filename: EXER5.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Displays a pixelart.',13,10
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
	;1st row color
	mov ah,09h
	mov bl,11h
	mov cx,8
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;2nd row color blue
	mov ah,09h
	mov bl,11h
	mov cx,3
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;2nd row color red
	mov ah,09h
	mov bl,44h
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
	
	;2nd row color blue
	mov ah,09h
	mov bl,11h
	mov cx,3
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;3rd row color blue
	mov ah,09h
	mov bl,11h
	mov cx,1
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	
	;3rd row color red
	mov ah,09h
	mov bl,44h
	mov cx,6
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;3rd row color blue
	mov ah,09h
	mov bl,11h
	mov cx,1
	int 10h
	
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;4th row color blue
	mov ah,09h
	mov bl,11h
	mov cx,3
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;4th row color red
	mov ah,09h
	mov bl,44h
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
	
	;4th row color blue
	mov ah,09h
	mov bl,11h
	mov cx,3
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;5th row color
	mov ah,09h
	mov bl,11h
	mov cx,8
	int 10h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	
end start
