

#1
#A)
#li $s0, 2
#li $s1, 5
#add $s2, $s0, $s1

#B)
#li $s3, 89
#li $s4, 20
#add $s5, $s3, $s4

#C)
#li $t0, -80
#li $t1, +1234
#add $t2, $t0, $t1

#D)
#li $t0, 70
#li $t1, -24
#sub $t2, $t0, $t1

#E)
#li $t0, 20
#li $t1, -150
#sub $t2, $t0, $t1


#2)



.text

    # Exibir o prompt para o usuário
    li $v0, 4 #Cout
    la $a0, mensagem
    syscall

    # Ler a idade atual do usuário
    li $v0, 5 #Cin
    syscall
    move $s0, $v0 # Armazenar a idade em $s0

    # Calcular a idade daqui a 30 anos
    li $t0, 30
    add $t1, $s0, $t0

    # Exibir a idade daqui a 30 anos
    li $v0, 1
    move $a0, $t1
    syscall

    # Terminar o programa
    li $v0, 10
    syscall

.data
mensagem: .asciiz "Digite a sua idade atual: "



#3
a:      .byte   54      
b:      .byte   45      
fmt:    .asciiz "%d\n"  

.text

    lb  $t0, a
    lb  $t1, b
    
    add $t2, $t0, $t1
    
    # Prepare os argumentos e chame printf
    move $a0, $t2
    la   $a1, fmt
    li   $v0, 4
    syscall
