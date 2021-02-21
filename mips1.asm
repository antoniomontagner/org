#coment
# 0x00100800 cada casa do enderesso 801 equivale a duas de valor  0x0000000'12'    VALOR(+0)
# 0x00100801  0x000000'00'12
# 0x00100802  0x0000'00'0012
# 0x00100803  0x'00'000012		aqui vai para o VALOR(+4)




.data
	msg: .asciiz "hello \n jaca \n "
	letra: .byte 'a'
	pi: .float 3.14
	duble1: .double 0.0	#esta em random memory tem que usa lwc1
	duble2: .double 2.0
	int1: .word 2
	int2: .word 3
	
	input: .space 20		#aloca algo de tamanho 20 bits
	
	
.text
	#li $v0, 4	# 1 print int, 2 print float,3 print double, 4 print msg, 5 get int, 6 get float,7 GET double,8 get text, 10 para exit
	#la $a0,msg	#so printa o que ta em REG A
	#li $v0,4
	#la $a1, letra
	#lwc1 $f12, pi	#lwc1 para usar reg de COPROC 1
	#ldc1 $f2, duble1		#para double usa COPROC1
	#ldc1 $f0, duble2
	#add.d $f12, $f2, $f0		#sempre usa o reg $f12 para somas de qualquer tipo  
	#add $a0, $zero, $f12	#para print muda para $a
	#sub $t0, $s0, $s2	
#####################################	
#	lw $s1, int1
#	lw $s2, int2
#	sub $t0, $s2,$s1
#		
#	li $v0, 1
#	move $a0, $t0 		# mover antes do print
######################################
#	mult
#
#
#	addi $s0, $zero, 10	#adiciona 10 a $s0 sem um .data
#	addi $s1, $zero, 4	
#	
#	#mul $t0, $s0, $s1
#	
#	#mult $s0,$s1		#salva a mult em hi "high" e lo "low"   caso nao caiba so no reg "low"
#	
#	#mflo $a1		#move from low para ...		
#	#mfhi 		para mover do reg high
#	
#	#sll $a1, $s0, 2		# shift left
#	
#	li $v0,1 #
#	add $a0, $zero, $a1
#	syscall
########################################
#	div	
#
#
#addi $s0, $zero, 10	#adiciona 10 a $s0 sem um .data
#	addi $s1, $zero, 4
#	
#	div $t0, $s0, $s1
#	add $a0, $zero, $t0
#	
#	li $v0,1
#	syscall
######################################
#	func
#
#
#	main:
#		
#		addi $a0, $zero, 10
#		addi $a1, $zero, 2				
#		
#		jal print		# usar func
#		
#		#codigo no meio 
#		li $v0,1
#		syscall
#		
#		
#		li $v0, 10		#encerrar
#		syscall
#	
#	print:
#		add $v1, $a0,$a1
#		li $v0,1
#		syscall
#		
#		
#		li $v0,4
#		la $a0, msg
#		syscall
#		
#		jr $ra		#return para a funcao, de onde paro
#
#################################################	
#	sw
#
#	addi $s0, $zero, 10
#	
#$	jal load
#	
#	li $v0, 1
#	move $a0, $s0
#	syscall
#
#	li $v0, 10
#	syscall
#	
#	load: 
#		addi $sp, $sp, -4
	#		# addi $sp, $sp, -8  #para tirar 2 memoria	
			# sw $s0, 0($sp)
			# sw $ra, 4($sp)
#		sw $s0, 0($sp)	
#		
#		addi $s0, $s0, 30
#		
#		li $v0, 1
#		move $a0, $s0
#		syscall
#		
#		lw $s0, 0($sp)
#		addi $sp, $sp, 4
#		
#		jr $ra
#		
#
#		
#############################################
#
#	li $v0, 7		#salva em V0
#	syscall
#
########
#
#	li $v0, 8
#	la $a0, input  		#nome da varial onde vai salva
#	li $a1, 20		#tamanho maximo da msg
#	syscall
#	
#	li $v0, 4
#	la $a0, msg 
#	syscall
#	
#	li $v0, 4
#	la $a0, input
#	syscall
#	
#	li $v0, 10
#	syscall
#	
#################################################

	addi $a0,$zero,5
	addi $a1, $zero, 5
	
	beq $a0, $a1, jump
	
	#li $v0, 10
	#syscall
	
	jump:
		li $v0,4
		la $a0, msg
		syscall
		
	
	
