#vetor antes da igualdade -> Store
#vetor depois -> Load

.data #0x10010000

b: .word 1,2,3,4,5,6,7,8,9,10 #Cada caracter = 32 bits

.text #0x00400000

#1-B
la $s1, b #$s1 = 0x10010000
li $a1, 10 #A
li $a2, 20 #B
li $a3, 30 #C
add $t6, $a1, $a3
sw $a1, 9800($s1)



