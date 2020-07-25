section .text
global _start
_start:
	mov ecx, 0
	mov eax, 0
	fib:
	        add eax, dword[a]
	        add eax, dword[b]
	        mov ebx, dword[b]
	        mov dword[a], ebx
	        mov dword[b], eax
	        mov eax, 0
                inc ecx
	        cmp ecx, dword[n]
	        jl fib
	mov eax, [a]

section .data
n dd 10
a dd 0
b dd 1
