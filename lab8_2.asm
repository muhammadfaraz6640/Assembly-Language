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
         
 
     
    call Addition 
    
    call Substraction 
     
    call Multiplacation 
    
    call Division 
  
    
    main endp                              
    
    Addition proc    
            mov al,bl  ;a+b=al
            add al,dl
            ret
     Addition endp 
                  
                  
    Substraction proc
          mov al,bl  ;a-b=al
          sub al,dl
          ret
    
     Substraction endp
                      
                      
                      
     Multiplacation proc
          mov al,bl  ;a*b=al
          mul dl
          ret
    
     Multiplacation endp                  
                  
                  
                  
     Division proc
          mov al,bl  ;a/b=al
          div dl
          ret  
    
     Division endp
    
    
    
    end main
