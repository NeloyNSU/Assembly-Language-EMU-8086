
;4. Copy the elements of an array to 
;another array with reverse order.

org 100h 

mov bx, offset arr0
mov bp, offset arr1


mov cx,4

loop1: 
inc bx
loop loop1 

mov cx,5

loop2:
mov al, [bx]
mov [bp], al
dec bx
inc bp
loop loop2


ret
 
arr0 db 5 dup(1,2,3,4,5)
arr1 db 5 dup(?)








