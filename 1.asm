
;basic arithmetic - add,sub


org 100h

mov ax,5    ;ax=5
mov bx,10   ;bx=10

add ax,bx   ;ax=ax+bx (see the result in ax register 0F)

mov cx,15   ;cx=15
mov dx,10   ;dx=10

sub cx,dx   ; cx=cx-dx (see the result in cx register-05)


ret




