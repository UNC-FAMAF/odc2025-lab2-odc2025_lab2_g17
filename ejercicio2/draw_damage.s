.globl draw_damage

draw_damage:
	
	//--Pinta el daño recibido por cada player
	
	//--Parámetros
	//x0 = framebuffer
	//x5 = player		//x6 = 1 o 2
	//x6 = damage		//x5 = 1-4
	
	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos	
	stp x19, x20, [sp, #-16]!
	stp x21, x22, [sp, #-16]!
	
	//--Definimos color
	movz x10, 0xffb8, lsl 16
	movk x10, 0x0404, lsl 00
	
	//--Copiamos framebuffer_base
	mov x20, x0
	mov w19, w10
	mov x21, x5
	mov x22, x6
	
//--Verificamos el player
	
	//--De acuerdo al parámetro dibujamos la damage
	cmp x21, #1
	b.eq player_1
	
	cmp x21, #2
	b.eq player_2
	

player_1:

	//Verificamos la cant de daño
	
	cmp x22, #1
	b.eq damage_1_1
	
	cmp x22, #2
	b.eq damage_1_2
	
	cmp x22, #3
	b.eq damage_1_3
	
	cmp x22, #4
	b.eq damage_1_4
	
damage_1_1:

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #21
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	mov x5, x22
	mov x6, x23
	
	b done

damage_1_2:

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #16
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	mov x5, x22
	mov x6, x23
	
	b done
	
damage_1_3:

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #11
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	mov x5, x22
	mov x6, x23
	
	b done

damage_1_4:

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #6
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	mov x5, x22
	mov x6, x23
	
	b done

player_2:

	//Verificamos la cant de daño
	
	cmp x22, #1
	b.eq damage_2_1
	
	cmp x22, #2
	b.eq damage_2_2
	
	cmp x22, #3
	b.eq damage_2_3
	
	cmp x22, #4
	b.eq damage_2_4
	
damage_2_1:

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #55
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	mov x5, x22
	mov x6, x23
	
	b done

damage_2_2:

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #50
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	mov x5, x22
	mov x6, x23
	
	b done
	
damage_2_3:

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #45
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	mov x5, x22
	mov x6, x23
	
	b done

damage_2_4:

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #45
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	mov x5, x22
	mov x6, x23
	
	b done

done:

//--Restaurar registros y ret
	
	ldp x21, x22, [sp], #16
	ldp x19, x20, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
