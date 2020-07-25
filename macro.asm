%define add2(x) add x, 2

section .text
global _start
        _start:
        add2(rax)
