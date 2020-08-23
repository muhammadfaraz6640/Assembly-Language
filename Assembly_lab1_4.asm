     
 .MODEL SMALL

.STACK 100h

.CODE 
MAIN PROC
   MOV AH,2
   MOV DL,2Ah
   INT 21h  
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h  
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h  
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h  
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h  
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h   
              
    call set_cursor 
    
   MOV AH,2
   MOV DL,2Ah
   INT 21h 
            
 call set_cursor
             
      mov DL,AL          ;moving AL value that is entered in DL
    MOV DL, 0AH                  ; new line feed
    INT 21H
    
    MOV AH,2
   MOV DL,2Ah
   INT 21h 
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h 
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h  
            
    MOV AH,2
   MOV DL,2Ah
   INT 21h 
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h 
   
   MOV AH,2
   MOV DL,2Ah
   INT 21h                  

 call set_4linecursor 
 
      MOV AH,2
   MOV DL,2Ah
   INT 21h   
   
call set_5linecursor 
 
      MOV AH,2
   MOV DL,2Ah
   INT 21h 
     
     
   

  
   
MAIN ENDP

set_cursor proc
    ;mov ax,0200h
    mov dx,0100h; move cursor to 1st row of 0th column
    mov bx,0
    int 10h                   
      RET
set_cursor endp  

set_4linecursor proc
    ;mov ax,0200h
    mov dx,0300h; move cursor to 4th row of 0th column
    mov bx,0
    int 10h                 
      RET
set_4linecursor endp       

set_5linecursor proc
    ;mov ax,0200h
    mov dx,0400h; move cursor to 4th row of 0th column
    mov bx,0
    int 10h                 
      RET
set_5linecursor endp

END MAIN      

