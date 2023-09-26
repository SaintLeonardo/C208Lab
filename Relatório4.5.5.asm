.data


.text


li $t1, 10 #I
li $t2, 0 #Contador

while:
bgt $t1, $t2, loop
j rachafora
loop: 
addi $t2, $t2, 5 
subi $t1, $t1, 2
j while

rachafora:




