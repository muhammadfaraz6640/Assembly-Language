main proc
    mov ax,8
    mov bx,8
    add ax,bx
    aaa    ;ascii adjust after big addition
    
                ;if low nibble of AL > 9 or AF = 1 then:
            ;8086 instructions Page 2 of 53
            ;AAA No operands
            ;z AL = AL + 6
            ;z AH = AH + 1
            ;z AF = 1
            ;z CF = 1
            ;;else
            ;z AF = 0
            ;z CF = 0 
    