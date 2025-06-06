.globl draw_triangle_down

draw_triangle_down:

	//--Dibuja un triangulo de base "b"
	//mediante draw_line_cell
	//empezando en la celda (row, col)
	//con una linea de "length" = "b"
	//despues de dibujar una linea
	//vuelve a llamar a draw_line_cell
	//la proxima linea empieza en (row+1,col+1)
	//y length - 2
	//mientras length > 0
	
	//--Parámetros	
	//x0 = framebuffer_base
	//x1 = row
	//x2 = col
	//x3 = b
	//w10 = color	
	
	//--Salvar FP, LR
	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos
	
	stp x19, x20, [sp, #-16]!
	stp x21, x22, [sp, #-16]!
	stp x23, x24, [sp, #-16]!	
	
	//--Copiamos los parámetros
	
	mov w19, w10	//w19 = color
	mov x20, x0	//x20 = framebuffer_base
	mov x21, x1	//x21 = row
	mov x22, x2	//x22 = col
	mov x23, x3	//x23 = height
	
	//--Iniciamos el length = b
	
	mov x24, x23	//x24 = length
	
loop:

	//while(length > 0)
	cmp x24, #1
	blt done
	
	//--Cargamos los valores que necesita draw_line_cell
	//x0 = framebuffer_base
	//x1 = row
	//x2 = col
	//x3 = length
	//w10 = color
	
	mov x0, x20
	mov x1, x21
	mov x2, x22
	mov x3, x24
	mov w10, w19
	bl draw_line_cell
	
	//--Preparamos la siguiente linea
	add x21, x21, #1	//row++
	add x22, x22, #1	//col++
	sub x24, x24, #2	//length-2		
	b loop	//while (length > 0)
	
done:

	//--Restaurar registros y ret
	
	ldp x23, x24, [sp], #16
	ldp x21, x22, [sp], #16
	ldp x19, x20, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
