;Filename: EXER8.ASM
;Displaying strings of text
;LOVELY SHANE P. ONG
;Date: August 30, 2024

.model small
.stack 100h
.data
	desc 	db 13,10,10,10,'Filename: EXER8.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Displays name,course,department, university by string.',13,10
			db 'Date Created:  August 30, 2024',13,10,10,'$'
		; lea dx, desc   
		; mov ah, 09h   
		; int 21h
		; mov ax, 4C00h
		; int 21h
	line1 db 'Lovely Shane P. Ong$'
	line2 db 'Bachelor of Science in Computer Science 2nd Year$'
	line3 db 'College of Computer Studies$'
	line4 db 'Cebu Institute of Technology - University$'
.code

main:
	;set up data
	mov ax,@data
	mov ds, ax
	
	;line1
	mov ah,09h
	mov dx,offset line1
	int 21h
	
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;line2
	mov ah,09h
	mov dx,offset line2
	int 21h
	
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;line3
	mov ah,09h
	mov dx,offset line3
	int 21h
	
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	;line4
	mov ah,09h
	mov dx,offset line4
	int 21h
	

	lea dx, desc   
		mov ah, 09h   
		int 21h
		mov ax, 4C00h
		int 21h
end main

