section .text
global _start
_start:
        mov rax, 4278190080
        push rax
        mov rax, 0
        mov al, byte[rsp+7]

        
