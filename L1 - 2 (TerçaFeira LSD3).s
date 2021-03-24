#Predente-se criar uma tabela na mem�ria do processador com os valores de 
#3^(i+1) + 5*i
#quando i varia de 0 at� 10. 3^(i+1) representa 3 elevado a i+1.

.data
i:	.word 1

.text
	
	#adress da mem�ria
	la a0, i
	#load da word i em a0
	lw a1, 0(a0)
	#vezes que o ciclo repete
	li a2, 9
	#inicializa��o do 3 e 5
	li a4, 3
	li a5, 5
	li a6, 3

	#guardar o primeiro elemento
	sw a3, 0(a0)	

loop:
	
	#contas
	mul a6, a6, a4
	mul a7, a5, a1
	add a7, a7, a6
	
	#incremento, mem�ria e condi��o
	sw a7, 4(a0)
	addi a0, a0, 4
	addi a1, a1, 1
	bge a2, a1, loop
	
	#termina��o
	li a7, 10
	ecall