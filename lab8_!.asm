.MODEL small
.STACK 100h
    
     
.CODE
    main proc
    
     Mov ah,1    ;input a
     Int 21h
     
     mov bl,al;
    
    Mov ah,1    ;input b
    Int 21h
    
    mov dl,al
     
     Mov ah,1    ;input c
    Int 21h
    
    mov cl,al
 
     
    call calculate 
  
    
    main endp                              
    
    calculate proc
     mov al,dl        
     mul dl  ;b*b
     mov dl,al     ; b*b = dl
     
     
     mov al,cl    ;a*c
     mul bl
                   ; a*c = cx
     mov cl,al
     
     mov al,4
     mul cl
     
     
     
     sub dl,al
     
    
     calculate endp
    
    
    
    
    end main
