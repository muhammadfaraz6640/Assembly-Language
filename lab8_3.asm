.MODEL small
.STACK 100h
    
.DATA 

  msgtrue db 0ah,'True','$'     
  msgfalse db 0ah,'False','$'     
.CODE
    main proc             
    
     Mov ah,1    ;input value
     Int 21h  
     
     mov bh,al
     
     mov ax,@DATA
     mov ds,ax
     
      ;lea dx,msgtrue
      ;mov ah,09h
      ;int 21h 
     
    call compare 
  
    
    main endp                              
    
    compare proc
    mov bl,31h  ;31h = 1
          
    cmp bh,bl
    je TRUE 
    
    
    
    
    TRUE: call display_iftrue
      ret 
    
     
    call display_iffalse  
        
     compare endp
    
    display_iftrue proc
         lea dx,msgtrue
         mov ah,09h
         int 21h 
         ret
    display_iftrue endp
            
              
     display_iffalse proc
         lea dx,msgfalse
         mov ah,09h
        int 21h     
           ret
   display_iffalse endp  
      
      
    end main
