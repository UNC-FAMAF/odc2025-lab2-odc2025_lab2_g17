.globl draw_hud

draw_hud:
	//--Dibuja las barras de vida y el timer
	
	//--Parámetros
	//x0 = framebuffer 
	
	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos	
	stp x19, x20, [sp, #-16]!
	
	//--Copiamos framebuffer_base
	mov x20, x0
	
//------------------
//--Barras de vida--
//------------------

//--Contenedores

	//--Definimos color
	movz x10, 0xffcf, lsl 16
	movk x10, 0xd8dc, lsl 00
	
	//--Copiamos color
	mov w19, w10

//--Contenedor 1

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #5
	mov x2, #2
	mov x3, #25
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Contenedor 2

	//--param draw_rect_cell
	mov x0, x20
	mov x1, #5
	mov x2, #36
	mov x3, #25
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--restauramos framebuffer y color
	mov x0, x20
	mov w10, w19	

//--Vida

	//--Definimos Color
	movz x10, 0xff18, lsl 16
	movk x10, 0xd61e, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Vida 1

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #3
	mov x3, #18
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Vida 2
	
	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #37
	mov x3, #16
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_color y color
	mov x0, x20
	mov w10, w19


//--Daño

	//--Definimos color
	movz x10, 0xffb8, lsl 16
	movk x10, 0x0404, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Daño 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #21
	mov x3, #5
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Daño 2

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #53
	mov x3, #7
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//---------
//--Timer--
//---------

	//--Mismo color que "DAÑO" no hace falta
	//volver a definirlo

//--7

//--Rect

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #30
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Line
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #28
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--5
	
//--Line 1
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #32
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Line 2
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #3
	mov x2, #32
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Line 3
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #5
	mov x2, #32
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Cell 1
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #2
	mov x2, #32
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Cell 2
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #4
	mov x2, #34
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Restaurar registros y ret
	
	ldp x19, x20, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
