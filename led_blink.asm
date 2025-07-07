# LED blinking

# Code Section
.text 

main:
    li a4, 0x00ff0000
    li a0, 0x101
loop:

    mv a1, a4
    ecall
    
    addi a4, a4, 0x10
    j loop

    # Exit - Environment call 10
    li a0, 10
    ecall


