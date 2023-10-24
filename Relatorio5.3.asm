.data 
	a: .word 4,5
	
.text
	la $s1, a #a
	li $s0, 0 #j
	
	
	if: ble $a1, 5, loop
	lw $t2, 4($s1)
	add $t7, $t2, 10
	j exit
	
	loop:
	sll $t3, $s0, 2
	add $t1, $t3, $s1
	sw $a1, 0($s1)
	addi $s0, $s0, 1
	add $t5, $s0, 2
	j if
exit: