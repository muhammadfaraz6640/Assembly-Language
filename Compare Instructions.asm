main proc
    mov ax,02  ;mov 02 to ax ax=02  
    mov bx,ax  ;mov ax to bx bx=02
    cmp ax,bx  ;compare ax and bx ax==bx true
    je A       ;if above condition is true then execute A
    jne B      ;if not true then execute B
    
    B: mov cx,2  ;proc B
    A: mov cx,3  ;proc A