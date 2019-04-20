main:
lui $t0,60
sub $sp,$sp,$t0
add $s1,$sp,$0
lui $t0,20
add $s2,$sp,$t0
lui $t0,40
add $s3,$sp,$t0
add $t4,$0,$t0
lui $t0,5
add $t5,$0,$t0
loop:
slt $t1,$t4,$t5
beq $t1,$0,exit
mult $s1,$t5
mflo $s1
mult $s2,$t5
mflo $s2
mult $s3,$t5
mflo $s3
lw $t1,($s1)
lw $t2,($s2)
add $t3,$t1,$t2
sw $t3,($s3)
j loop
exit:
jr $ra
