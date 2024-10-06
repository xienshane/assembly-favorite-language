;Filename: EXER21.ASM
;Programmer Name: LOVELY SHANE P. ONG
;Date: September 21, 2024
;Description:  Create a program that asks for your first name, middle name, and family name. Then display “Hello, FIRST NAME MIDDLE NAME FAMILY NAME!”.
 
.model small
.stack 200h
.data
	desc 	db 13,10,10,10,'Filename: EXER21.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: asks for your first name, middle name, and family name.',13,10
			db 'Date Created:  September 21, 2024',13,10,10,'$'
    regMsg           db 'REGISTRATION FORM$', 13, 10
    firstNamePrompt  db 13, 10,'Enter First Name: $'
    middleNamePrompt db 13, 10, 'Enter Middle Name: $'
    familyNamePrompt db 13, 10, 'Enter Family Name: $'
    greetingMessage  db 13, 10, 'Hello, $'
    space            db ' $'
    firstName        db 20, 20 dup(?)
    middleName       db 20, 20 dup(?)
    familyName       db 20, 20 dup(?)
    exclamation      db '!$'
 
 
.code
 
    main:             
                      mov  ax, @data
                      mov  ds, ax
                      lea dx, desc   
		                  mov ah, 09h   
		                  int 21h  
                      lea dx, regMsg
                      mov  ah, 09h
                      int  21h
 
                      lea dx, firstNamePrompt
                      mov  ah, 09h
                      int  21h
 
                      lea  dx, firstName
                      mov  ah, 0Ah
                      int  21h
 
                      lea dx, middleNamePrompt
                      mov  ah, 09h
                      int  21h
 
                      lea  dx, middleName
                      mov  ah, 0Ah
                      int  21h
 
                      lea dx, familyNamePrompt
                      mov  ah, 09h
                      int  21h
 
                      lea  dx, familyName
                      mov  ah, 0Ah
                      int  21h
 
                      lea dx, greetingMessage
                      mov  ah, 09h
                      int  21h
 
                      lea  si, firstName + 2
                      mov  cl, [firstName+1]
    DisplayFirstName:
                      mov  dl, [si]
                      mov  ah, 02h
                      int  21h
                      inc  si
                      loop DisplayFirstName
 
                      mov  dl, ' '
                      mov  ah, 02h
                      int  21h
 
                      lea  si, middleName + 2
                      mov  cl, [middleName+1]
    DisplayMiddleName:
                      mov  dl, [si]
                      mov  ah, 02h
                      int  21h
                      inc  si
                      loop DisplayMiddleName
 
 
                      mov  dl, ' '
                      mov  ah, 02h
                      int  21h
 
                      lea  si, familyName + 2
                      mov  cl, [familyName+1]
    DisplayFamilyName:
                      mov  dl, [si]
                      mov  ah, 02h
                      int  21h
                      inc  si
                      loop DisplayFamilyName
 
                      mov  dl, '!'
                      mov  ah, 02h
                      int  21h
 
                    ; exit program
                      mov  ax, 4C00h
                      int  21h
 
end main