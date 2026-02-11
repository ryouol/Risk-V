# Lab_Test_1.S
# ----------------------------------------------------------------
# Problem number                : 106
# Student first name            : Roy
# Student last name             : Luo
# Student ID number (8 digits)   : 21055857
# ------------------------------------------------------------------

.align 2
.globl _start

_start:
# --------------------- Strat your code here------------------------- 
li s0, 0x80000000
li t0, 0x67452301
sw t0, 4(s0)

andi t1, t0, 0xff
slli t1, t1, 24

li a0,0xFF00
and t2, a0, t0
slli t2, t2, 8

li a1, 0x00FF0000
and t3, a1, t0
srli t3, t3, 9

li a2, 0xFF000000
and t4, a2, t0
srli t4, t4, 24

or t5, t4, t3
or t5, t5, t2
or t5, t5, t1

sw t5, 8(s0)

ebreak