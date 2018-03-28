
;copy the elements of an array to another array with reverse order.

org 100h   

mov bx, offset arr
mov bp, offset arrcopy 

mov si, [bx+4]
mov [bp],si

mov si, [bx+3]
mov [bp+1],si

mov si, [bx+2]
mov [bp+2],si

mov si, [bx+1]
mov [bp+3],si

mov si, [bx+0]
mov [bp+4],si


 



ret

arr db 5 dup(1,2,3,4,5)
arrcopy db 5 dup(?)