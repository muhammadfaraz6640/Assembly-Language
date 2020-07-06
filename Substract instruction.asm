main proc
    Mov ax,05 ;move 02 to ax register
    mov bx,03 ;move 02 to ax register
    mov cx,01 ;move 02 to ax register
    sub ax,bx ;add ax and bx and store result in ax
    sub ax,cx ;add (ax+bx) and cx and store result in ax
                               
                               
     ;if answer will be negative then SF=1 CF=1 IF=1