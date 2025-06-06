.globl delay_1s

delay_1s:

	//--Demora 0.5 segundo la aninmacion

	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	
	mov x1, #6		//vueltas nec para aprox 0.5s
	
delay:
	
	movz x0, #0x02f4, lsl #16	//numero de iteraciones
	movk x0, #0xf080
loop:
	subs x0, x0, #1
	b.ne loop
	
	subs x1, x1, #1
	b.ne delay
	
	
	//--Restaurar registros y ret
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
