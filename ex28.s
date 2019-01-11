.section .init9

main:
	mov.b #32, &26
	mov #32, r15
	mov #0, r14
	mov #400, r13
	mov #1 , r12
	mov #400, r11
	mov #10, r10
	mov #0, r9

loopsub:
loop:
	mov.b r15, &25
	xor #32, r15
	add #1, r9 
	cmp r9, r10
	jne next
	sub #1,r13
	mov #0, r9
next :
	cmp r13,r12
	jeq loopadd
	
loop1: 
	add #1, r14
	cmp r14, r13
	jne loop1
	
	mov #0, r14
	jmp loop


loopadd :
loop2:
	mov.b r15, &25
	xor #32, r15
	
	add #1, r9 
	cmp r9, r10
	jne next1
	add #1,r13
	mov #0, r9
	

next1:
	cmp r13,r11
	jeq loopsub
	
loop3: 
	add #1, r14
	cmp r14, r13
	jne loop3
	
	mov #0, r14
	jmp loop2
