
hola:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

00000000000004d0 <_init>:
 4d0:	48 83 ec 08          	sub    $0x8,%rsp
 4d4:	48 8b 05 0d 0b 20 00 	mov    0x200b0d(%rip),%rax        # 200fe8 <__gmon_start__>
 4db:	48 85 c0             	test   %rax,%rax
 4de:	74 02                	je     4e2 <_init+0x12>
 4e0:	ff d0                	callq  *%rax
 4e2:	48 83 c4 08          	add    $0x8,%rsp
 4e6:	c3                   	retq   

Desensamblado de la sección .plt:

00000000000004f0 <.plt>:
 4f0:	ff 35 d2 0a 20 00    	pushq  0x200ad2(%rip)        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
 4f6:	ff 25 d4 0a 20 00    	jmpq   *0x200ad4(%rip)        # 200fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
 4fc:	0f 1f 40 00          	nopl   0x0(%rax)

Desensamblado de la sección .plt.got:

0000000000000500 <__cxa_finalize@plt>:
 500:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 506:	66 90                	xchg   %ax,%ax

Desensamblado de la sección .text:

0000000000000510 <_start>:
 510:	31 ed                	xor    %ebp,%ebp
 512:	49 89 d1             	mov    %rdx,%r9
 515:	5e                   	pop    %rsi
 516:	48 89 e2             	mov    %rsp,%rdx
 519:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 51d:	50                   	push   %rax
 51e:	54                   	push   %rsp
 51f:	4c 8d 05 9a 01 00 00 	lea    0x19a(%rip),%r8        # 6c0 <__libc_csu_fini>
 526:	48 8d 0d 23 01 00 00 	lea    0x123(%rip),%rcx        # 650 <__libc_csu_init>
 52d:	48 8d 3d ec 00 00 00 	lea    0xec(%rip),%rdi        # 620 <main>
 534:	ff 15 a6 0a 20 00    	callq  *0x200aa6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 53a:	f4                   	hlt    
 53b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000540 <deregister_tm_clones>:
 540:	48 8d 3d d1 0a 20 00 	lea    0x200ad1(%rip),%rdi        # 201018 <__TMC_END__>
 547:	55                   	push   %rbp
 548:	48 8d 05 c9 0a 20 00 	lea    0x200ac9(%rip),%rax        # 201018 <__TMC_END__>
 54f:	48 39 f8             	cmp    %rdi,%rax
 552:	48 89 e5             	mov    %rsp,%rbp
 555:	74 19                	je     570 <deregister_tm_clones+0x30>
 557:	48 8b 05 7a 0a 20 00 	mov    0x200a7a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 55e:	48 85 c0             	test   %rax,%rax
 561:	74 0d                	je     570 <deregister_tm_clones+0x30>
 563:	5d                   	pop    %rbp
 564:	ff e0                	jmpq   *%rax
 566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 56d:	00 00 00 
 570:	5d                   	pop    %rbp
 571:	c3                   	retq   
 572:	0f 1f 40 00          	nopl   0x0(%rax)
 576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 57d:	00 00 00 

0000000000000580 <register_tm_clones>:
 580:	48 8d 3d 91 0a 20 00 	lea    0x200a91(%rip),%rdi        # 201018 <__TMC_END__>
 587:	48 8d 35 8a 0a 20 00 	lea    0x200a8a(%rip),%rsi        # 201018 <__TMC_END__>
 58e:	55                   	push   %rbp
 58f:	48 29 fe             	sub    %rdi,%rsi
 592:	48 89 e5             	mov    %rsp,%rbp
 595:	48 c1 fe 03          	sar    $0x3,%rsi
 599:	48 89 f0             	mov    %rsi,%rax
 59c:	48 c1 e8 3f          	shr    $0x3f,%rax
 5a0:	48 01 c6             	add    %rax,%rsi
 5a3:	48 d1 fe             	sar    %rsi
 5a6:	74 18                	je     5c0 <register_tm_clones+0x40>
 5a8:	48 8b 05 41 0a 20 00 	mov    0x200a41(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 5af:	48 85 c0             	test   %rax,%rax
 5b2:	74 0c                	je     5c0 <register_tm_clones+0x40>
 5b4:	5d                   	pop    %rbp
 5b5:	ff e0                	jmpq   *%rax
 5b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 5be:	00 00 
 5c0:	5d                   	pop    %rbp
 5c1:	c3                   	retq   
 5c2:	0f 1f 40 00          	nopl   0x0(%rax)
 5c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5cd:	00 00 00 

00000000000005d0 <__do_global_dtors_aux>:
 5d0:	80 3d 3e 0a 20 00 00 	cmpb   $0x0,0x200a3e(%rip)        # 201015 <_edata>
 5d7:	75 2f                	jne    608 <__do_global_dtors_aux+0x38>
 5d9:	48 83 3d 17 0a 20 00 	cmpq   $0x0,0x200a17(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 5e0:	00 
 5e1:	55                   	push   %rbp
 5e2:	48 89 e5             	mov    %rsp,%rbp
 5e5:	74 0c                	je     5f3 <__do_global_dtors_aux+0x23>
 5e7:	48 8b 3d 1a 0a 20 00 	mov    0x200a1a(%rip),%rdi        # 201008 <__dso_handle>
 5ee:	e8 0d ff ff ff       	callq  500 <__cxa_finalize@plt>
 5f3:	e8 48 ff ff ff       	callq  540 <deregister_tm_clones>
 5f8:	c6 05 16 0a 20 00 01 	movb   $0x1,0x200a16(%rip)        # 201015 <_edata>
 5ff:	5d                   	pop    %rbp
 600:	c3                   	retq   
 601:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 608:	f3 c3                	repz retq 
 60a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000610 <frame_dummy>:
 610:	55                   	push   %rbp
 611:	48 89 e5             	mov    %rsp,%rbp
 614:	5d                   	pop    %rbp
 615:	e9 66 ff ff ff       	jmpq   580 <register_tm_clones>
 61a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000620 <main>:
 620:	b8 04 00 00 00       	mov    $0x4,%eax
 625:	bb 01 00 00 00       	mov    $0x1,%ebx
 62a:	48 b9 10 10 20 00 00 	movabs $0x201010,%rcx
 631:	00 00 00 
 634:	ba 05 00 00 00       	mov    $0x5,%edx
 639:	cd 80                	int    $0x80
 63b:	b8 01 00 00 00       	mov    $0x1,%eax
 640:	bb 00 00 00 00       	mov    $0x0,%ebx
 645:	cd 80                	int    $0x80
 647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 64e:	00 00 

0000000000000650 <__libc_csu_init>:
 650:	41 57                	push   %r15
 652:	41 56                	push   %r14
 654:	49 89 d7             	mov    %rdx,%r15
 657:	41 55                	push   %r13
 659:	41 54                	push   %r12
 65b:	4c 8d 25 7e 07 20 00 	lea    0x20077e(%rip),%r12        # 200de0 <__frame_dummy_init_array_entry>
 662:	55                   	push   %rbp
 663:	48 8d 2d 7e 07 20 00 	lea    0x20077e(%rip),%rbp        # 200de8 <__init_array_end>
 66a:	53                   	push   %rbx
 66b:	41 89 fd             	mov    %edi,%r13d
 66e:	49 89 f6             	mov    %rsi,%r14
 671:	4c 29 e5             	sub    %r12,%rbp
 674:	48 83 ec 08          	sub    $0x8,%rsp
 678:	48 c1 fd 03          	sar    $0x3,%rbp
 67c:	e8 4f fe ff ff       	callq  4d0 <_init>
 681:	48 85 ed             	test   %rbp,%rbp
 684:	74 20                	je     6a6 <__libc_csu_init+0x56>
 686:	31 db                	xor    %ebx,%ebx
 688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 68f:	00 
 690:	4c 89 fa             	mov    %r15,%rdx
 693:	4c 89 f6             	mov    %r14,%rsi
 696:	44 89 ef             	mov    %r13d,%edi
 699:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 69d:	48 83 c3 01          	add    $0x1,%rbx
 6a1:	48 39 dd             	cmp    %rbx,%rbp
 6a4:	75 ea                	jne    690 <__libc_csu_init+0x40>
 6a6:	48 83 c4 08          	add    $0x8,%rsp
 6aa:	5b                   	pop    %rbx
 6ab:	5d                   	pop    %rbp
 6ac:	41 5c                	pop    %r12
 6ae:	41 5d                	pop    %r13
 6b0:	41 5e                	pop    %r14
 6b2:	41 5f                	pop    %r15
 6b4:	c3                   	retq   
 6b5:	90                   	nop
 6b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6bd:	00 00 00 

00000000000006c0 <__libc_csu_fini>:
 6c0:	f3 c3                	repz retq 

Desensamblado de la sección .fini:

00000000000006c4 <_fini>:
 6c4:	48 83 ec 08          	sub    $0x8,%rsp
 6c8:	48 83 c4 08          	add    $0x8,%rsp
 6cc:	c3                   	retq   
