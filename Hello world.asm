MOV ax,0061
A :MOV bx,0012
B : ADD ax,bx
INC ax
CMP ax,0100
Je A
Jne B

A : MOV cx,5
B : MOV cx,6
exit : 