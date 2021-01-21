.data
i: .double 7.202
ii: .double  4
.text
ldc1 $f2, i
ldc1 $f0, ii

li $v0,3
add.d $f12,$f2,$f0
syscall