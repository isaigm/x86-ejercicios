section .data
	msg db 'Hola', 0xa
section .text
	global main
	main:
	mov rax, 4
	mov rbx, 1
	mov rcx, msg
	mov rdx, 5
	int 0x80
	mov rax, 1
	mov rbx, 0
	int 0x80
