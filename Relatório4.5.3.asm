.data


.text


li $t1, 10 #A
li $t2, 20 #B
li $t3, 30 #C


bge $t1, $t2, seformenor
sub $t3, $t1, $t2 
add $t1, $t2, $t3 
j rachafora

seformenor: 
sub $t2, $t1, $t3 
add $t3, $t2, $t3

rachafora:




