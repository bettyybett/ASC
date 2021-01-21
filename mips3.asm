.data
num: .space 4
.text
	main:
	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0,5
	syscall
	move $t1,$v0
	
	li $v0,5
	syscall
	move $t2,$v0
		
		bgt $t0,$t1, compare1
		jal compare2
		
	li $v0,10
	syscall
	
	compare1:
		bgt $t0,$t2, afisare0
		jal afisare2
	compare2:
		bgt $t1,$t2, afisare1
		jal afisare2
	afisare0:
		li $v0,1
		move $a0,$t0
		syscall
	li $v0,10
	syscall
	afisare1:
		li $v0,1
		move $a0,$t1
		syscall
	li $v0,10
	syscall
	afisare2:
		li $v0,1
		sw $t2,num($0)
		move $a0,$t2
		syscall
	li $v0,10
	syscall