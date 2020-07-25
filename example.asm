section .text
	global _start
_start:
	mov edx, len
	mov ecx, number
	mov ebx, 1
	mov eax, 4
	int 0x80
	mov eax, 0
	int 0x80

section .data
number db 'hola mundo', 0xa
len equ $ - number
