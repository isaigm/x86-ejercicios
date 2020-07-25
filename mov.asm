section .data
n db 10

section .text
global _start
_start:
	movzx eax, byte[n]
