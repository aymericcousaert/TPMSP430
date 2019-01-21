.section .init9

main:
	mov.b #2, &50
	mov.b #0, &34
	mov #3, r14 
	mov #2, r15
	mov #0, r13
	mov #2, r10

loop:
	mov &32, r13
	cmp r14, r13
	jeq loop

loop1:
	mov &32, r13
	cmp r10, r13
	jeq loop1

	mov.b r15, &49
	xor #2, r15
	
	jmp loop



