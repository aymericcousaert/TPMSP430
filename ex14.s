.section .init9

main:
	/* initialisation de la diode rouge */
	mov.b #2, &50

	/* eteindre */
	mov.b #0, &49

	/* allumer */
	mov.B #2, &49

loop:
	jmp loop
