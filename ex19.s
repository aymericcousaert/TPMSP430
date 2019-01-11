.section .init9

main:
	mov.b #2, &50
	mov #2, r15
loop:
	mov.b r15, &49
	xor #2, r15
	jmp loop
