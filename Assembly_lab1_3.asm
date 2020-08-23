    
 .MODEL SMALL

.STACK 100h

.CODE 
MAIN PROC
   MOV AH,2
   MOV DL,46h    ;will write F
   INT 21h   
   mov DL,AL          ;moving AL value that is entered in DL
    MOV DL, 0AH                  ; new line feed
    INT 21H
   MOV AH,2
   MOV DL,41h                 ;will write A
   INT 21h  
   mov DL,AL          ;moving AL value that is entered in DL
    MOV DL, 0AH                  ; new line feed
    INT 21H 
   MOV AH,2
   MOV DL,52h          ;will write R
   INT 21h    
   mov DL,AL          ;moving AL value that is entered in DL
    MOV DL, 0AH                  ; new line feed
    INT 21H
   MOV AH,2
   MOV DL,41h        ;will write A
   INT 21h 
   mov DL,AL          ;moving AL value that is entered in DL
    MOV DL, 0AH                  ; new line feed
    INT 21H  
   MOV AH,2
   MOV DL,5Ah      ;will write Z
   INT 21h              
END MAIN 