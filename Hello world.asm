MOV ax,0061 ;move 0061 to the ax register
A :MOV bx,0012	; now move 0012 to the bx register
B : ADD ax,bx   ; add ax and bx i-e 0061 and 0012
INC ax  ;increment ax by 1
CMP ax,0100	;compare the value of ax with 0100
Je A  ;if the comparision result is true then execute label A
Jne B	;if not true then execute label b

A : MOV cx,5  ;label A with the code
B : MOV cx,6	;label B with the code
exit : 