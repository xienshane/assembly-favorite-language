.model small
.stack 100
.data

desc 	db 13,10,10,10,'Filename: EXER9.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Calendar using ascii.',13,10
			db 'Date Created:  August 30, 2024',13,10,10,'$'


.code

start:

mov ax, @data
mov ds, ax

    lea dx, desc   
	mov ah, 09h   
	int 21h

  
int 27h
end start;
