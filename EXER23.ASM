;Filename: EXER23.ASM
;Programmer Name: LOVELY SHANE P. ONG
;Date: September 21, 2024
;Description:  Create an Automated Teller Machine (ATM) main menu screen. Ask the
;              user to input a number corresponding to an item in the main menu.
;              Print back the number input by user and the corresponding
;              transaction.
 
.model small
.stack 100h
.data
	desc 	db 13,10,10,10,'Filename: EXER23.ASM',13,10
			db 'Programmer Name: LOVELY SHANE P. ONG',13,10
			db 'Program Description: Automated Teller Machine (ATM)',13,10
			db 'Date Created:  September 21, 2024',13,10,10,'$'
    prompt         db 'Cebu Institute of Technology - University', 13,10
                   db 'Automated Teller Machine',13,10,10
                   db 'Main Menu',13,10
                   db '1 Balance Inquiry',13,10
                   db '2 Withdrawal',13,10
                   db '3 Deposit',13,10
                   db '4 Transfer',13,10
                   db '5 Bills Payment',13,10
                   db '6 Change Pin',13,10
                   db '7 Exit',13,10
                   db 'Enter number of your choice: ', '$'
 
    choice         db ?
    
    ending         db 'Thank you for banking with us!',13,10
                   db 'Copyright 2024',13,10
                   db 'Programmer: Lovely Shane P. Ong' , '$'
 
    balanceInquiry db 13,10,10,'You have chosen 1 Balance Inquiry.', 13,10,10, '$'
    withdrawal     db 13,10,10,'You have chosen 2 Withdrawal.', 13,10,10, '$'
    deposit        db 13,10,10,'You have chosen 3 Deposit.', 13,10,10, '$'
    transfer       db 13,10,10,'You have chosen 4 Transfer.', 13,10,10, '$'
    billsPayment   db 13,10,10,'You have chosen 5 Bills Payment.', 13,10,10, '$'
    changePin      db 13,10,10,'You have chosen 6 Change Pin.', 13,10,10, '$'
    exitMsg        db 13,10,10,'You have chosen 7 Exit.', 13,10,10,'$'
.code
    main:                 
                          mov ax, @data
                          mov ds, ax
    lea dx, desc   
		mov ah, 09h   
		int 21h  
                          mov ah, 09h
                          lea dx, prompt
                          int 21h
 
    ; Ask for user input
                          mov ah, 01h                  
                          int 21h                      
                          sub al, '0'                  
                          mov choice, al               
 
    ; Display the corresponding transaction
                          cmp choice, 1
                          je  displayBalanceInquiry
                          cmp choice, 2
                          je  displayWithdrawal
                          cmp choice, 3
                          je  displayDeposit
                          cmp choice, 4
                          je  displayTransfer
                          cmp choice, 5
                          je  displayBillsPayment
                          cmp choice, 6
                          je  displayChangePin
                          cmp choice, 7
                          je  displayExit
 
    ; If invalid choice
                          mov dx, offset ending
                          mov ah, 09h
                          int 21h
                          jmp exitProgram
 
    displayBalanceInquiry:
                          lea dx, balanceInquiry
                          jmp printOutput
 
    displayWithdrawal:    
                          lea dx, withdrawal
                          jmp printOutput
 
    displayDeposit:       
                          lea dx, deposit
                          jmp printOutput
 
    displayTransfer:      
                          lea dx, transfer
                          jmp printOutput
 
    displayBillsPayment:  
                          lea dx, billsPayment
                          jmp printOutput
 
    displayChangePin:     
                          lea dx, changePin
                          jmp printOutput
 
    displayExit:          
                          lea dx, exitMsg
                          jmp printOutput
 
    printOutput:          
                          mov ah, 09h
                          int 21h
                          jmp exitProgram
 
    exitProgram:          
                          mov ah, 09h
                          lea dx, ending
                          int 21h
 
                          mov ah, 4Ch
                          int 21h
end main