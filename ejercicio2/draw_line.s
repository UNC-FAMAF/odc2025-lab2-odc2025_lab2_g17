.globl draw_line

draw_line:
	//recibe
	//x0 = framebuffer base
	//x1 = row
	//x2 = column
	//x3 = length
	//w10 = color
	//pinta una linea
	
	//--push stack
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	stp x21, x22, [sp, #-16]!
	stp x23, x24, [sp, #-16]!
	stp x25, x26, [sp, #-16]!
	
	//--guardo los valores originales
	mov w21, w10		//w21 = color
	mov x22, x0		//x22 = framebuffer base
	mov x23, x1		//x23 = row
	mov x24, x2		//x24 = column
	mov x25, x3		//x25 = length
	
loop_line:
	
	//cargo nuevamente los registros para llamar draw_pixel
	mov x0, x22		
	mov x1, x23
	mov x2, x24
	mov w10, w21
	bl draw_pixel		//dibujamos el pixel
	
	//modifico los registros temporales
	add x24, x24, #1	//column++
	sub x25, x25, #1	//length--
	cbnz x25, loop_line	//while(length != 0) {loop_line}
	
	//--pull stack	
	ldp x25, x26, [sp], #16
	ldp x23, x24, [sp], #16
	ldp x21, x22, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
