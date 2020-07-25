section .data
n dq 102222
nbits dq 0

section .bss
bytes resb 64

section .text
global _start
_start:
        counting:
       	 	mov rdx, qword[n]
        	and rdx, 1
        	push rdx
        	inc qword[nbits]
        	shr qword[n], 1
        	cmp qword[n], 0
        	jg counting
        	mov rsi, 0
        ascii:
        	pop rdx
        	add dl, '0'
        	mov byte[bytes + rsi], dl
        	inc rsi
        	cmp rsi, qword[nbits]
        	jl ascii
        
	mov byte[bytes + rsi], 0xA
        mov byte[bytes + rsi + 1], 0
        add qword[nbits], 2
        mov rdx, qword[nbits]
        mov rcx, bytes
        mov rbx, 1
        mov rax, 4
        int 0x80
        mov rax, 0
        int 0x80
        mov rax, 1
        mov rbx, 0
        int 0x80
