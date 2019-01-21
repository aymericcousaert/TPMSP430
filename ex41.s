.section .init9

main:
	mov.b #2, &50
	mov.b #0, &49
	mov #2, r15
	mov #2000, r14
	mov #0, r13
	mov.b #0, &34
	mov #0, r12
	mov #3, r11
	mov #0, r10
	mov #0, r9

loop:
	mov.b &32, r12
	cmp.b r11, r12
	jeq loop

loop1:
	call #pause
	mov.b &32, r12
	add #1, r10
	cmp.b r11, r12
	jne loop1


boucle2:
	sub #1, r10
	call #pause
	mov.b r15, &49
	xor #2, r15
	cmp r10, r9
	jne boucle2

	jmp loop



pause:
	
	sub #1, r13
	jne pause
	ret
	
	