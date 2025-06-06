	.equ CELL_SIZE, 10

.globl draw_cell

draw_cell:
	//recibe
	//x0 = framebuffer base
	//x1 = row
	//x2 = column
	//w10 = color
	//pinta una celda de 10x10, la idea es dividir la pantalla en una matriz 64x48 para facilitar el dibujado y crear un pixel art
	
	//--push stack
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	stp x21, x22, [sp, #-16]!
	stp x23, x24, [sp, #-16]!
	stp x25, x26, [sp, #-16]!
	
	//--guarda los valores originales
	mov w21, w10
	mov x22, x0
	mov x23, x1
	mov x24, x2
	mov x25, #CELL_SIZE
	
	//--mult por 10 las coord
	mul x23, x23, x25	//x23 = row*10
	mul x24, x24, x25	//x24 = column*10
	
	
	//--cargo nuevamente para llamar a draw_rect
	mov x0, x22
	mov x1, x23
	mov x2, x24
	mov x3, x25
	mov x4, x25
	mov w10, w21
	bl draw_rect
	
	//--pull stack
	ldp x25, x26, [sp], #16
	ldp x23, x24, [sp], #16
	ldp x21, x22, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	
	ret
	
