.data
u1:	.word 1
u2:	.word 1

.text
	li a4, 2 #indica o estágio da sequência
	li a5, 10 #cotrolador de loop
	la a0, u1

loop:	
	bge a4, a5, end #branch greater or equal, quando a4 >= a5, vai para end

	lw a1, 0(a0)
	lw a2, 4(a0)
	add a3, a1, a2
	sw a3, 8(a0)

	addi a4, a4, 1 #1 instância da sequência completa
	addi a0, a0, 4 #salta 1 endereço na memória

	j loop #volta a loop

end:
	li a7, 10
	ecall
		
	