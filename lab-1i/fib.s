	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

    mov r2, r0        @ r2 = r0
    mov r1, #-1       @ PREVIOUS = -1 
    mov r0, #1        @ RESULT = 1
    mov r3, #0        @ SUM = 0

loop:
    add r3, r0, r1    @ SUM = RESULT + PREVIOUS  
    mov r1, r0        @ PREVIOUS = RESULT
    mov r0, r3        @ RESULT = SUM

    sub r2, r2, #1    @ r2--
    cmp r2, #-1       @ while(x!=-1) 
    bne loop

	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
