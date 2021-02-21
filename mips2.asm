.text 
.globl main
main: 
add $s0, $zero, $gp
lbu $t0, 0($s0)
lbu $t0, 1($s0)
lbu $t1, 4($s0)
lbu $t2, 8($s0)
lbu $t3, 12($s0)
lbu $t4, 16($s0)
lbu $t5, 20($s0)
lbu $t6, 24($s0)
lw $t8, 0($s0)