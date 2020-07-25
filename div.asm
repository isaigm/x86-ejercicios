section .text
global _start
_start:
        mov rdx, 0
        mov rax, 10
        mov rcx, 2
        div rcx
