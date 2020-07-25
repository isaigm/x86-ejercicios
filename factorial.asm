section .text
	global _start
	_start:
		mov eax, 1
		mov ecx, dword[number]
		factorial:
		imul eax, ecx
		dec ecx
		cmp ecx, 0
		jg factorial
section .data
number dd 5
