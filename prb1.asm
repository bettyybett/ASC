.data
a:.word 2
b:.word 3
c:.word 1

.text
lw $t0, a
lw $t1, b
lw $t2, c

comp1:
ble $t0, $t1, comp2

comp2:
bgt  $t1, $t2, max1

comp3:
ble $t2, $t1, max2

comp4:
ble $t1, $t0, comp5

comp5:
bgt $t0, $t2, max1

comp6:
ble $t2, $t0, iesire

max1:
move $t0, $t2
j iesire

max2:
move $t0, $t1
j iesire

iesire:
move $a0, $t0
li $v0, 1
syscall
li $v0,10
syscall
