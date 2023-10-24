#vetor antes da igualdade -> Store
#vetor depois -> Load

.data #0x10010000

a: .word 1,2,3,4,5,6,7,8,9,10 #Cada caracter = 32 bits

.text #0x00400000

#1-A
la $s1, a #$s1 = 0x10010000
li $a1, 10 #A
li $a2, 20 #B
li $a3, 30 #C
sub $t6, $a2, $a3
sw $a1, 40($s1)

