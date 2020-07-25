section .data
	number equ 12 ; Aqui va el numero a comprobar
section .text
	global _start
	_start:
		mov esi, 0x0
		mov edx, number
		and edx, 0x1
		cmp edx, 0
		je even
		jmp end
		even:
		mov esi, 0x1
		end:
                mov ebx, 40
