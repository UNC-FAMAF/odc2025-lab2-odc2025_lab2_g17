.globl draw_player_2

draw_player_2:
	
	//--Dibuja el segundo jugador partiendo desde una cordenada
	//(row, col), recibe como parametros la posicion del brazo
	//izq y la pierna izq
	
	//--Parámetros
	//x0 = framebuffer_base
	//x1 = row
	//x2 = col
	//x5 = pos pierna
	//x6 = pos brazo
	
	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos	
	stp x19, x20, [sp, #-16]!
	stp x21, x22, [sp, #-16]!
	stp x23, x24, [sp, #-16]!
	
	
	//--Copiamos parámetros
	mov x20, x0
	mov x21, x1
	mov x22, x2
	mov x23, x5
	mov x24, x6
	
//------------------------------
//--Dibujamos las partes fijas--
//------------------------------

//---------------
//--Torso negro--
//---------------

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
	add x2, x2, #17
	mov x3, #6
	mov x4, #12
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
	add x2, x2, #13
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
	add x2, x2, #14
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
	add x2, x2, #16
	mov x3, #9
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 5

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #11
	mov x2, x22
	add x2, x2, #25
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
	add x1, x1, #0
	mov x2, x22
	add x2, x2, #14
	mov x3, #3
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
	add x2, x2, #24
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Cell 1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #14
	mov x2, x22
	add x2, x2, #23
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//----------------
//--Pierna negro--
//----------------

//rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #16
	mov x2, x22
	add x2, x2, #16
	mov x3, #7
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #19
	mov x2, x22
	add x2, x2, #22
	mov x3, #3
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #24
	mov x2, x22
	add x2, x2, #24
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #31
	mov x2, x22
	add x2, x2, #27
	mov x3, #2
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
	add x2, x2, #23
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 6

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #22
	mov x2, x22
	add x2, x2, #25
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19	

//rect 7

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #27
	mov x2, x22
	add x2, x2, #27
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell 1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #21
	mov x2, x22
	add x2, x2, #21
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//------------------
//--Torso azul--
//------------------

//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x82ba, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #19
	mov x3, #3
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #9
	mov x2, x22
	add x2, x2, #19
	mov x3, #2
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
	
//rect 4

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
	
//rect 5

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #15
	mov x3, #1
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
	add x1, x1, #12
	mov x2, x22
	add x2, x2, #16
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #14
	mov x2, x22
	add x2, x2, #17
	mov x3, #5
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Cell 1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #6
	mov x2, x22
	add x2, x2, #14
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Cell 2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #12
	mov x2, x22
	add x2, x2, #21
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//------------------
//--Pierna azul--
//------------------

//rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #16
	mov x2, x22
	add x2, x2, #18
	mov x3, #3
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #26
	mov x2, x22
	add x2, x2, #25
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #27
	mov x2, x22
	add x2, x2, #26
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #29
	mov x2, x22
	add x2, x2, #27
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19


//--------------
//--Torso piel--
//--------------

//--Definimos color	
	movz x10, 0xfff5, lsl 16
	movk x10, 0xc2a6, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #5
	mov x2, x22
	add x2, x2, #22
	mov x3, #2
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #7
	mov x2, x22
	add x2, x2, #24
	mov x3, #2
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #9
	mov x2, x22
	add x2, x2, #25
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #14
	mov x2, x22
	add x2, x2, #22
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #2
	mov x2, x22
	add x2, x2, #13
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
	add x1, x1, #3
	mov x2, x22
	add x2, x2, #15
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Cell 2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #11
	mov x2, x22
	add x2, x2, #25
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--------------
//--Pierna izq--
//--------------

	cmp x23, #1
	b.eq stand
	
	cmp x23, #2
	b.eq step
	
	

stand:

//---------
//--Negro--
//---------

	//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x0000, lsl 00
	
	//--Copiamos color
	mov w19, w10

//rect1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #18
	mov x2, x22
	add x2, x2, #14
	mov x3, #2
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #20
	mov x2, x22
	add x2, x2, #13
	mov x3, #2
	mov x4, #12
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #22
	mov x2, x22
	add x2, x2, #12
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #25
	mov x2, x22
	add x2, x2, #15
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//line1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #31
	mov x2, x22
	add x2, x2, #11
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
	add x1, x1, #17
	mov x2, x22
	add x2, x2, #15
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Cell 2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #21
	mov x2, x22
	add x2, x2, #16
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//------------
//--azul--
//------------

	//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x82ba, lsl 00
	
	//--Copiamos color
	mov w19, w10
		
//rect1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #25
	mov x2, x22
	add x2, x2, #12
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #26
	mov x2, x22
	add x2, x2, #13
	mov x3, #1
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

	b leg_done

step:

	//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x0000, lsl 00
	
	//--Copiamos color
	mov w19, w10

//rect1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #17
	mov x2, x22
	add x2, x2, #15
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #18
	mov x2, x22
	add x2, x2, #14
	mov x3, #1
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #19
	mov x2, x22
	add x2, x2, #13
	mov x3, #3
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #21
	mov x2, x22
	add x2, x2, #12
	mov x3, #1
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect5

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #23
	mov x2, x22
	add x2, x2, #11
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect5

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #24
	mov x2, x22
	add x2, x2, #10
	mov x3, #2
	mov x4, #8
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//line1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #31
	mov x2, x22
	add x2, x2, #8
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//------------
//--azul--
//------------

//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x82ba, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//rect1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #25
	mov x2, x22
	add x2, x2, #9
	mov x3, #1
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//rect2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #26
	mov x2, x22
	add x2, x2, #10
	mov x3, #1
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19		

	b leg_done

leg_done:


//--------------
//--Brazo izq--
//--------------

	cmp x24, #1
	b.eq normal
	
	cmp x24, #2
	b.eq block
	
	cmp x24, #3
	b.eq punch
	
normal:

//---------
//--Negro--
//---------

	//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x0000, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Rec1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #11
	mov x2, x22
	add x2, x2, #9
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--cell1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #12
	mov x2, x22
	add x2, x2, #8
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//---------
//--Piel--
//---------

	//--Definimos color	
	movz x10, 0xfff5, lsl 16
	movk x10, 0xc2a6, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Rec1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #7
	mov x2, x22
	add x2, x2, #13
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #9
	mov x2, x22
	add x2, x2, #12
	mov x3, #1
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec3
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #11
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
//--Rec4
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #7
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #10
	mov x2, x22
	add x2, x2, #9
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #9
	mov x2, x22
	add x2, x2, #8
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	

	b arm_done
	
block:

//---------
//--Negro--
//---------

	//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x0000, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Rec1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #2
	mov x2, x22
	add x2, x2, #9
	mov x3, #3
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #3
	mov x2, x22
	add x2, x2, #8
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #7
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//---------
//--Piel--
//---------

	//--Definimos color	
	movz x10, 0xfff5, lsl 16
	movk x10, 0xc2a6, lsl 00
	
	//--Copiamos color
	mov w19, w10

//--Rec1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #1
	mov x2, x22
	add x2, x2, #11
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #5
	mov x2, x22
	add x2, x2, #9
	mov x3, #4
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec3
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #7
	mov x2, x22
	add x2, x2, #11
	mov x3, #3
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #6
	mov x2, x22
	add x2, x2, #8
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

	b arm_done

punch:

//---------
//--Negro--
//---------

	//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x0000, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Rec1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #2
	mov x3, #3
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//--Rec2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #5
	mov x2, x22
	add x2, x2, #4
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//---------
//--Piel--
//---------

	//--Definimos color	
	movz x10, 0xfff5, lsl 16
	movk x10, 0xc2a6, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Rec1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #6
	mov x3, #4
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #5
	mov x2, x22
	add x2, x2, #9
	mov x3, #4
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec3
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #7
	mov x2, x22
	add x2, x2, #12
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Rec4
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #0
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset
	mov x0, x20
	mov w10, w19

//--Cell1
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #5
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
//--Cell2
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, x21
	add x1, x1, #4
	mov x2, x22
	add x2, x2, #12
	mov w10, w19
	bl draw_cell
	
	//--reset
	mov x0, x20
	mov w10, w19
	
	
	b arm_done

arm_done:

//--Restaurar registros y ret
	
	ldp x23, x24, [sp], #16
	ldp x21, x22, [sp], #16
	ldp x19, x20, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
