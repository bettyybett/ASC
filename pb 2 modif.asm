.data
	n:  .word 11
	i: .word 11
	s: .word 0
.text 
	lw $t0,i 
	lw $t1,n 
	lw $t2,s 
	lw $t3,n 
	div $s0,$t1,2 
	while:
		ble $t0,$0,exit 
		div $t1,$t0 
		mfhi $t6 
		beq $t6, $0, rest 
		subi $t0,$t0,1 
		j while 
	rest:
		add $t2,$t2,$t0 
		subi $t0,$t0,1 
		j while 
	exit: 
		sw $t2, s 
		li $v0,1 
		lw $a0,s 
		syscall
	li $v0,10 
	syscall