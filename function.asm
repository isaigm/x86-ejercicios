section .text
global myFunc
myFunc:
        
        mov rax, 1110
        ret

global _start
_start:
        call myFunc

