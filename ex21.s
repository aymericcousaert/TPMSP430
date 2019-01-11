.section .init9

main:
	mov.b #2, &50
	mov #2, r15
	mov #0, r14
	mov #20000, r13
loop:
	mov.b r15, &49
	xor #2, r15
	
loop1: 
	add #1, r14
	cmp r14, r13
	jne loop1
	
	jmp loop
