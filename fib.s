
fib:     formato del fichero elf32-i386


Desensamblado de la sección .text:

08048080 <_start>:

section .text
global _start
_start:

	cmp DWORD[n], 0 
 8048080:	83 3d d4 90 04 08 00 	cmpl   $0x0,0x80490d4
	je fib0
 8048087:	74 02                	je     804808b <fib0>
 8048089:	eb 06                	jmp    8048091 <continue>

0804808b <fib0>:
	jmp continue
 804808b:	b8 00 00 00 00       	mov    $0x0,%eax
	fib0:
		mov eax, 0
 8048090:	c3                   	ret    

08048091 <continue>:
		ret
 8048091:	83 3d d4 90 04 08 01 	cmpl   $0x1,0x80490d4
	
	continue:
		cmp DWORD[n], 1
 8048098:	74 02                	je     804809c <fib1>
		je fib1
 804809a:	eb 06                	jmp    80480a2 <end>

0804809c <fib1>:
		jmp end
 804809c:	b8 01 00 00 00       	mov    $0x1,%eax
	fib1:
		mov eax, 1
 80480a1:	c3                   	ret    

080480a2 <end>:
		ret
 80480a2:	b8 00 00 00 00       	mov    $0x0,%eax
	
	end:
		mov eax, 0
 80480a7:	8b 0d d4 90 04 08    	mov    0x80490d4,%ecx
		mov ecx, [n]
 80480ad:	83 e9 01             	sub    $0x1,%ecx

080480b0 <f>:
		sub ecx, 1
 80480b0:	03 05 d8 90 04 08    	add    0x80490d8,%eax
	
	f:
		add eax, [a]
 80480b6:	03 05 dc 90 04 08    	add    0x80490dc,%eax
		add eax, [b]
 80480bc:	8b 15 dc 90 04 08    	mov    0x80490dc,%edx
		mov edx, [b]	
 80480c2:	89 15 d8 90 04 08    	mov    %edx,0x80490d8
		mov [a], edx
 80480c8:	a3 dc 90 04 08       	mov    %eax,0x80490dc
		mov [b], eax
 80480cd:	49                   	dec    %ecx
 80480ce:	83 f9 00             	cmp    $0x0,%ecx
		dec ecx
		cmp ecx, 0
 80479d1:	7d dd                	jge    80480b0 <f>
