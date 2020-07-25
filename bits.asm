section .data
number dd 551 ; cuenta los bits prendidos de la constante number

section .text
global _start
	_start:
	counting:
	mov ecx, dword[number]
	and ecx, 1
        sub ecx, '0'
        mov edx, 1
        mov eax, 4
        mov ebx, 1
        int 0x80
        mov eax, 0
        int 0x80
	shr dword[number], 1
	cmp dword[number], 0
	jg counting
	

