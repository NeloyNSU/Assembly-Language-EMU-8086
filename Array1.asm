
;initialize a array of 50 elements and refill with 5,10,12

org 100h  

mov bx, offset arr1


ret
      
arr1 db 50 dup(5,10,12)   

ret




