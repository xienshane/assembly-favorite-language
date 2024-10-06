.model small
.stack 100h

.data
description     db'Filename: EXER10.ASM', 0Dh, 0Ah
                db'Programmer Name: LOVELY SHANE P. ONG', 0Dh, 0Ah
                db'Pogram Description: Create a College Enrollment Form', 0Dh, 0Ah, '$'

form  db 218, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 191,
      db 179,'                 Cebu Institute of Technology - University                   ', 179,
      db 179,'     Full Name          ____________________    _________________________    ', 179, 
      db 179,'                        First Name              Last Name                    ', 179, 
      db 179, '     Address            _________________________________________________    ', 179, 
      db 179, '                        Street Address                                       ', 179, 
      db 179, '                        ____________________    _________________________    ', 179, 
      db 179, '                        City                    State/Province               ', 179, 
      db 179, '     Birth Date         ____________   ____________   ___________________    ', 179, 
      db 179, '                        Month          Day            Year                   ', 179, 
      db 179, '     Gender             o Male         o Female       o N/A                  ', 179, 
      db 179, '     Student Number  _________________   Student Email _________________     ', 179, 
      db 179, '                     Phone Number        example@example                     ', 179, 
      db 179, '     Company      ______________________________________________________     ', 179, 
      db 179, '     Courses      o English 101         o English 102   o Creative Writing   ', 179, 
      db 179, '                  o Creative Writing 2  o History 101   o History 102        ', 179, 
      db 179, '                  o Math 101            o Math 102      o Windows 8          ', 179, 
      db 179, '     Additional Comments  ', 218, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 191, '    ', 179,
      db 179, '                          ', 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, '    ', 179, 
      db 179, '     Date: ____________                                Signature             ', 179, 
      db 179, '                                                      (Your Name)            ', 179,
      db 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, '$'

.code
start:
    ; Setup for coloring the backgrounds and texts
    mov ax, 3  
    int 10h     ;
    mov ah, 06h;
    xor al, al  ;
    xor cx, cx  ;

    ; Border
    mov ch, 3  ; Row start       x1
    mov cl, 0  ; Column start    y1
    mov dh, 24  ; Row end         x2
    mov dl, 80  ; Column end      y2
    mov bh, 60h; Color
    int 10h;

    ; Form background
    mov ch, 4  ; Row start       x1
    mov cl, 1  ; Column start    y1
    mov dh, 23; Row end         x2
    mov dl, 77  ; Column end      y2
    mov bh, 30h; Color
    int 10h

    ; Form header background
    mov ch, 4  ; Row start       x1
    mov cl, 1  ; Column start    y1
    mov dh, 4  ; Row end         x2
    mov dl, 77  ; Column end      y2
    mov bh, 20h; Color
    int 10h;

    mov ax, @data
    mov ds, ax

    mov ax, 1111h
    xor bl, bl
    int 10h

    mov ah, 09h
    lea dx, description
    int 21h

    mov ah, 09h
    lea dx, form
    INT 21H    

    int 27h
end start
