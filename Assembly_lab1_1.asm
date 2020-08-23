.MODEL SMALL

.STACK 100h

.CODE 
MAIN PROC
    MOV AH,1       ;read character from keyboard
    INT 21h
    mov DL,AL          ;moving AL value that is entered in DL
    MOV DL, 0AH                  ; new line feed
    INT 21H      
    MOV AH, 2         ;dusplay character
    MOV DL, AL
    INT 21H                
END MAIN