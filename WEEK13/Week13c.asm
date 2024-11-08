;Filename: Week13c.ASM
;Programmer Name: Lovely Shane P. Ong
;Program Description: Ask user to input a number from 1 to 8. Display error
;message if number entered is less than 1 or greater than 8. If
;input is correct, horizontally display the numbers, with space
;between each number, from 1 to the number entered by user.
;Date Created: November 8, 2024
 
.MODEL SMALL
.STACK 100H
.DATA
prompt_msg  DB 'Enter a number from 1 to 8: $'
error_msg   DB 'Error: Number out of range!$'
newline     DB 0Dh, 0Ah, '$'
space       DB ' $'
 
.CODE
MAIN PROC
    MOV AX, @DATA            ; Load the address of data segment
    MOV DS, AX               ; Initialize data segment
 
input_loop:
    ; Display prompt message
    MOV DX, OFFSET prompt_msg
    MOV AH, 09H              ; Function to display string
    INT 21H
 
    ; Get user input
    MOV AH, 01H              ; Function to get input character
    INT 21H
    SUB AL, '0'              ; Convert ASCII to integer by subtracting ASCII '0'
 
    ; Check if input is within range 1-8
    CMP AL, 1                ; Check if less than 1
    JB show_error            ; If so, jump to error message
    CMP AL, 8                ; Check if greater than 8
    JA show_error            ; If so, jump to error message
 
    ; Display numbers from 1 to user input
    MOV CL, AL               ; Store user input number in CL for loop count
    MOV BL, 1                ; Start counter at 1
 
display_numbers:
    MOV DL, BL               ; Load current number in DL
    ADD DL, '0'              ; Convert to ASCII for display
    MOV AH, 02H              ; Function to display a character
    INT 21H
 
    ; Display space after each number except the last one
    DEC CL                   ; Decrement loop counter
    JZ end_display           ; If loop counter is zero, end display
    MOV DL, ' '              ; Load space character
    MOV AH, 02H              ; Display space
    INT 21H
 
    ; Increment BL for the next number
    INC BL
    JMP display_numbers      ; Repeat loop
 
end_display:
    ; Display newline
    MOV DX, OFFSET newline
    MOV AH, 09H
    INT 21H
    JMP input_loop           ; Ask for input again after displaying numbers
 
show_error:
    ; Display error message and newline
    MOV DX, OFFSET error_msg
    MOV AH, 09H
    INT 21H
    MOV DX, OFFSET newline
    MOV AH, 09H
    INT 21H
    JMP input_loop           ; Go back to prompt for input
 
MAIN ENDP
END MAIN
 