.data
x:.word 8
s:.space 4
.text
main:
lw $t0,x
li $t1,0 #i
li $t2,0 #s
for:
	and $t3,$t0,1
	add $t2,$t2,$t3
	srl $t0,$t0,1
	addi $t1,$t1,1
	bge $t1,32,iesire
	j for
iesire:
	sw $t2,s
	move $a0,$t2
	li $v0,1
	syscall
	li $v0,10
	syscall
