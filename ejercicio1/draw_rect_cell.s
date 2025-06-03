.globl draw_rect_cell

draw_rect_cell:
	//recibe
	//x0 = framebuffer base
	//x1 = row
	//x2 = column
	//x3 = width
	//x4 = height
	//w10 = color
	//pinta un cuadrado usando draw_line_cell
	
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
	mov x25, x3		//x25 = width
	mov x26, x4		//x26 = height
	
loop_rect_cell:
	
	//cargo nuevamente los registros para llamar draw_line_cell
	mov x0, x22		
	mov x1, x23
	mov x2, x24
	mov x3, x25
	mov w10, w21
	bl draw_line_cell		//dibujamos una linea
	
	//modifico los reg temporales
	
	add x23, x23, #1		//row++
	sub x26, x26, #1		//height--
	cbnz x26, loop_rect_cell	//while(height != 0)
	
	
	//--pull stack
	ldp x25, x26, [sp], #16
	ldp x23, x24, [sp], #16
	ldp x21, x22, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
