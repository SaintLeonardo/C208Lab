.data


.text


li $t1, 10 #A
li $t2, 20 #B
li $t3, 30 #C


ble $t1, $t2, seformaior
add $t3, $t1, $t2 
sub $t1, $t2, $t3 
j rachafora

seformaior: 
add $t2, $t1, $t3 
sub $t3, $t2, $t3

rachafora:




