.data
	n:  .word 15
	i: .word 1
	s: .word 0
.text 
	lw $t0,i
	lw $t1,n
	lw $t2,s
	div $s0,$t1,2
	while:
		bgt $t0,$s0,exit
		div $t1,$t0
		mfhi $t6
		beq $t6, $0, rest
		add $t0,$t0,1
		j while
	rest:
		add $t2,$t2,$t0
		add $t0,$t0,1
		j while
	exit: 
		add $t2, $t2 ,$t1 
		sw $t2, s
		li $v0,1
		lw $a0,s
		syscall
	li $v0,10
	syscall