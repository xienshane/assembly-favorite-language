; Filename: Demo.asm
; Displaying single characters, numbers, and symbols
; Name: Lovely Shane P. Ong
; Date: August 30, 2024

.model small
.data
	desc 	db 13,10,10,10,'Filename: EXER3.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Displaying single characters, numbers, and symbols.',13,10
			db 'Date Created:  August 30, 2024',13,10,10,'$'
.code
.stack 100
start:
mov ax, @data
		mov ds, ax
		
		lea dx, desc   
		mov ah, 09h   
		int 21h
mov ah, 02h 
	mov cl,30h ; 0
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
	
mov ah, 02h 
	mov cl,31h ; 1
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,32h ; 2
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,33h ; 3
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,34h ; 4
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,35h ; 5
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,36h ; 6
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,37h ; 7
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,38h ; 8
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,39h ; 9
	mov dl,cl
	int 21h
mov ah,02h
	mov cl,0Ah ; 0Ah is new line
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,21h ; 
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,22h ; L
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,23h ; M
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,24h ; N
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,25h ; O
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,26h ; P
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,27h ; Q
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,28h ; R
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,29h ; S
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,2Ah ; T
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,55h ; U
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,56h ; V
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,57h ; W
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,58h ; X
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,59h ; Y
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,5Ah ; Z
	mov dl,cl
	int 21h

int 27h  ; terminate
end start  ; end program
