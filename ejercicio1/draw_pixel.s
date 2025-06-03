.globl draw_pixel

draw_pixel:
	//recibe
	//x0 = framebuffer base
	//x1 = row
	//x2 = column
	//w10 = color
	//pinta un pixel
	
	//--push stack
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	stp x21, x22, [sp, #-16]!
	
	//--muevo a temporales x0,x1,x2 para conservar el valor
	mov x12, x0
	mov x13, x1
	mov x14, x2
	
	//--guardo el color para evitar que cal_pixel pise el reg
	mov w21, w10
	
	//--cargo nuevamete x0,x1,x2 y llamo a calc_pixel
	mov x0, x12
	mov x1, x13
	mov x2, x14	
	bl calc_pixel
	
	//--rec el color y pinto el pixel
	mov w10, w21		
	stur w10, [x0]		

	//--pull stack
	ldp x21, x22, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
	
