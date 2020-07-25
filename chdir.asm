section .data
dir db "/home/isaigm"

section .text
global _start
	_start:
	mov eax, 12
	mov ebx, dir
	int 0x80
	mov eax, 1
	mov ebx, 0
	int 0x80
