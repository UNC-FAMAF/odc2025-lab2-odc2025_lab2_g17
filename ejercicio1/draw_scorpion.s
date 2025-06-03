.globl draw_scorpion

draw_scorpion:

	//--Parámetros
	//x0 = framebuffer_base
	//x1 = row
	//x2 = col
	
	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos	
	stp x19, x20, [sp, #-16]!
	stp x21, x22, [sp, #-16]!
	
	//--Copiamos parametros
	mov x20, x0
	mov x21, x1
	mov x22, x2
	
//----------
//--Capa 1--
//----------

//--Sombra

	//--Definimos color	
	movz x10, 0xff29, lsl 16
	movk x10, 0x2929, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #31
	mov x2, x22
	add x2, x2, #2
	mov x3, #17
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//----------
//--Capa 2--
//----------

	//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x0000, lsl 00
	
	//--Copiamos color
	mov w19, w10

//rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #6
	mov x3, #6
	mov x4, #17
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #1
	mov x2, x22
	add x2, x2, #11
	mov x3, #5
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//rect 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #7
	mov x2, x22
	add x2, x2, #12
	mov x3, #3
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #11
	mov x2, x22
	add x2, x2, #3
	mov x3, #11
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 5

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #17
	mov x2, x22
	add x2, x2, #5
	mov x3, #9
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 6

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #11
	mov x2, x22
	add x2, x2, #18
	mov x3, #2
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 7

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #18
	mov x2, x22
	add x2, x2, #12
	mov x3, #3
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 8

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #19
	mov x2, x22
	add x2, x2, #4
	mov x3, #3
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//rect 9

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #20
	mov x2, x22
	add x2, x2, #14
	mov x3, #2
	mov x4, #12
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 9

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #23
	mov x2, x22
	add x2, x2, #2
	mov x3, #3
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//rect 10

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #22
	mov x2, x22
	add x2, x2, #16
	mov x3, #1
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//rect 11

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #25
	mov x2, x22
	add x2, x2, #13
	mov x3, #3
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 12

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #27
	mov x2, x22
	add x2, x2, #1
	mov x3, #2
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//rect 13

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #31
	mov x2, x22
	add x2, x2, #0
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #0
	mov x2, x22
	add x2, x2, #12
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Line 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #12
	mov x2, x22
	add x2, x2, #17
	mov x3, #4
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Line 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #13
	mov x2, x22
	add x2, x2, #4
	mov x3, #9
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Line 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #31
	mov x2, x22
	add x2, x2, #16
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Cell 1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #4
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Cell 2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #14
	mov x2, x22
	add x2, x2, #5
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Cell 3
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #13
	mov x2, x22
	add x2, x2, #17
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Cell 4
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #16
	mov x2, x22
	add x2, x2, #12
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Cell 5
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #21
	mov x2, x22
	add x2, x2, #7
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Cell 6
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #22
	mov x2, x22
	add x2, x2, #3
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Cell 7
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #22
	mov x2, x22
	add x2, x2, #13
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Cell 8
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #24
	mov x2, x22
	add x2, x2, #15
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//----------
//--Capa 2--
//----------

	//--Definimos color	
	movz x10, 0xfff7, lsl 16
	movk x10, 0xbb07, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #7
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #8
	mov x3, #2
	mov x4, #10
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #13
	mov x3, #3
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #8
	mov x2, x22
	add x2, x2, #14
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 5

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #13
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 6

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #12
	mov x2, x22
	add x2, x2, #12
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 7

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #16
	mov x2, x22
	add x2, x2, #8
	mov x3, #3
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 8

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #26
	mov x2, x22
	add x2, x2, #3
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 9

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #27
	mov x2, x22
	add x2, x2, #2
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//--Rect 10

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #29
	mov x2, x22
	add x2, x2, #1
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 11

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #25
	mov x2, x22
	add x2, x2, #16
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 12

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #26
	mov x2, x22
	add x2, x2, #15
	mov x3, #1
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Line

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #14
	mov x2, x22
	add x2, x2, #7
	mov x3, #5
	mov w10, w19
	bl draw_line_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #12
	mov x2, x22
	add x2, x2, #7
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #6
	mov x2, x22
	add x2, x2, #14
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//----------
//--Capa 4--
//----------

	//--Definimos color	
	movz x10, 0xfff5, lsl 16
	movk x10, 0xc2a6, lsl 00
	
	//--Copiamos color
	mov w19, w10

//--Rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #9
	mov x2, x22
	add x2, x2, #2
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//--Rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #7
	mov x2, x22
	add x2, x2, #3
	mov x3, #2
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #6
	mov x2, x22
	add x2, x2, #4
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #15
	mov x3, #3
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 5

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #7
	mov x2, x22
	add x2, x2, #15
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 6

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #9
	mov x2, x22
	add x2, x2, #16
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 7

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #20
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rect 8

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #14
	mov x2, x22
	add x2, x2, #6
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #5
	mov x2, x22
	add x2, x2, #5
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//--Line 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #2
	mov x2, x22
	add x2, x2, #14
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #11
	mov x2, x22
	add x2, x2, #2
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #3
	mov x2, x22
	add x2, x2, #13
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #19
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #9
	mov x2, x22
	add x2, x2, #20
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//--Cell 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #12
	mov x2, x22
	add x2, x2, #16
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19


//--Restaurar registros y ret
	
	ldp x21, x22, [sp], #16
	ldp x19, x20, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
