
.model small
.data
	desc 	db 13,10,10,10,'Filename: EXER2.ASM',13,10
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
	mov cl,4Ch ; L
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,76h ; v
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,6Ch ; l
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,79h ; y
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,53h ; S
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,68h ; h
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,61h ; a
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,6Eh ; n
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,50h ; P
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,61h ; a
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,6Dh ; m
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,72h ; r
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,6Eh ; n
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h

mov ah, 02h 
	mov cl,4Fh ; O
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,6Eh ; n
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,67h ; g
	mov dl,cl
	int 21h

mov ah,02h
	mov cl,0Ah ; 0Ah is new line
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,42h ; B
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,61h ; a
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,63h ; c
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,68h ; h
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Ch ; l
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,72h ; r
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,66h ; f
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,53h ; S
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,63h ; c
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,69h ; i
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Eh ; n
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,63h ; c
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,69h ; i
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Eh ; n
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,43h ; C
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Dh ; m
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,70h ; p
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,75h ; u
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,74h ; t
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,72h ; r
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,53h ; S
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,63h ; c
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,69h ; i
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Eh ; n
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,63h ; c
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
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
	mov cl,6Eh ; n
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,64h ; d
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,59h ; y
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,61h ; a
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,72h ; r
	mov dl,cl
	int 21h
mov ah,02h
	mov cl,0Ah ; 0Ah is new line
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,43h ; C
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Ch ; l
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Ch ; l
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,67h ; g
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,66h ; f
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,43h ; C
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Dh ; m
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,70h ; p
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,75h ; u
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,74h ; t
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,72h ; r
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,53h ; S
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,74h ; t
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,75h ; u
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,64h ; d
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,69h ; i
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,73h ; s
	mov dl,cl
	int 21h
mov ah,02h
	mov cl,0Ah ; 0Ah is new line
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,43h ; C
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,62h ; b
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,75h ; u
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,69h ; I
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Eh ; n
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,73h ; s
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,74h ; t
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,69h ; i
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,74h ; t
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,75h ; u
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,74h ; t
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,66h ; f
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,54h ; T
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,63h ; c
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,68h ; h
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Eh ; n
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Ch ; l
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,6Fh ; o
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,67h ; g
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,79h ; y
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,20h ; space
	mov dl,cl 
	int 21h
mov ah, 02h 
	mov cl,2Dh ; o
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
	mov cl,6Eh ; n
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,69h ; i
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,76h ; v
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,65h ; e
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,72h ; r
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,73h ; s
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,69h ; i
	mov dl,cl
	int 21h

mov ah, 02h 
	mov cl,74h ; t
	mov dl,cl
	int 21h
mov ah, 02h 
	mov cl,79h ; y
	mov dl,cl
	int 21h

int 27h  ; terminate
end start  ; end program
