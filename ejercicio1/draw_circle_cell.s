.globl draw_circle_cell

draw_circle_cell:
	
	//--Dibuja un circulo de radio r y 
	//centro (center_row, center_col)
	//con la funcion draw_cell
	//usa dos ciclos anidados que verifican si una celda
	//(row, col) cumple con la formula
	//(row - center_row)² + (col - center_col)² <= radius²
	//y la pinta
	
	//--Parametros
	//x0 = framebuffer_base
	//x1 = center_row
	//x2 = center_col
	//x3 = radius
	//w10 = color
	
	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos	
	stp x19, x20, [sp, #-16]!
	stp x21, x22, [sp, #-16]!
	stp x23, x24, [sp, #-16]!
	stp x25, x26, [sp, #-16]!
	stp x27, x28, [sp, #-16]!
	
	//--Copiamos los parámetros	
	mov w19, w10	//w19 = color
	mov x20, x0	//x20 = framebuffer_base
	mov x21, x1	//x21 = center_row
	mov x22, x2	//x22 = center_col
	mov x23, x3	//x23 = radius
	
	//--Calculamos r²	
	mul x24, x23, x23	//x24 = r²
	
	//--Calculamos star_row	
	sub x25, x21, x23	//x25 = center_row - radius	
	
	//--Calculamos star_col	
	sub x26, x22, x23	//x26 = center_col - radius
	
	//--Ini cont_row	
	mov x27, #0 	//x27 = cont_row
	
outer_loop:
	
	//--While(cont_row < 2 * radius)	
	lsl x11, x23, #1		//x11 = 2 * radius
	cmp x27, x11
	b.gt done
	
	//--Ini cont_col
	mov x28, #0	//x28 = cont_col
	
inner_loop:
	
	//--While(cont_col < 2 * radius)
	cmp x28, x11
	b.gt next_row
	
	//--Calc si la celda esta dentro del circulo
	sub x12, x27, x23	//x12 = cont_row - radius
	mul x12, x12, x12	//x12²
	sub x13, x28, x23	//x13 = cont_col - radius
	mul x13, x13, x13	//x13²
	add x12, x12, x13	//x12 = x12 + x13
	
	//if x12 > radius², no pintamos
	cmp x12, x24
	b.gt skip
	
	//--Dibujamos
	mov x0, x20		//x0 = framebuffer_base
	add x1, x25, x27	//x1 = star_row + cont_row
	add x2, x26, x28	//x2 = star_col + cont_col
	mov w10, w19		//w10 = color
	bl draw_cell

skip:
	add x28, x28, #1	//cont_col++
	b inner_loop

next_row:
	add x27, x27, #1	//cont_row++
	b outer_loop
	
done:	
	
	//--Restaurar registros y ret
	
	ldp x27, x28, [sp], #16
	ldp x25, x26, [sp], #16
	ldp x23, x24, [sp], #16
	ldp x21, x22, [sp], #16
	ldp x19, x20, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
