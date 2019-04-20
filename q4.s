main:
add $t1,$t2,$t3
addu $t1,$t1,$t3
sub $t1,$t1,$t3
subu $t1,$t1,$t3
or $t1,$t1,$t3
and $t1,$t1,$t3
sllv $t1,$t1,$t3
slt $t1,$t1,$t3
srlv $t1,$t1,$t3
nor $t1,$t1,$t3
xor $t1,$t1,$t3
mult $s1,$s2
multu $s1,$s2
div $s1,$s2
divu $s1,$s2
mfhi $s3
mflo $s3
lwi $t2,8($s1)
lb $t2,8($s1)
sw $t2,8($s1)
sb $t2,8($s1)
lui $t3,8
j loop
loop:
beq $t1,$t2,Exit
bne $t1,$t2,Exit
Exit:
jr $ra
