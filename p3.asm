.data
i: .word 0
.text
f1: 
add $t1,$t0, $t0
jr $ra
f2:
mul $t2,$t0,$t0
jr $fp
f3:
mul $t3,$t0,-1
jr $sp
aplica:


main: 

	lw $s0,i
	li $t0,0
	for: 
	lb $t1,0($s0)
	beq $t1,$0,return
	addi $t0,$t0,1
	addi $s0, $s0,1
	 j for
	 return:
