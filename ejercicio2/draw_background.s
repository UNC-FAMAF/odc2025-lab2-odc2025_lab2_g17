.globl draw_background

draw_background:

	//--Dibuja el fondo de la imagen
	
	//--Parámetros
	//x0 = framebuffer_base
	
	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos	
	stp x19, x20, [sp, #-16]!
	
	//--Copiamos framebuffer_base
	mov x20, x0

//----------
//--Capa 1--
//----------

//--Cielo
	
	//--Definimos color	
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #0
	mov x2, #0
	mov x3, #64
	mov x4, #36
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Piso
	
	//--Definimos color	
	movz x10, 0xff90, lsl 16
	movk x10, 0xa4ae, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #36
	mov x2, #0
	mov x3, #64
	mov x4, #12
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Luna
	
	//--Definimos color	
	movz x10, 0xfff2, lsl 16
	movk x10, 0xf2ce, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #7
	mov x2, #57
	mov x3, #6
	mov w10, w19
	bl draw_circle_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//----------
//--Capa 2--
//----------

//Rect sup

	//--Definimos color	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #0
	mov x2, #0
	mov x3, #64
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
		
//Rect inf
	
	//--Cargamos los parametros
	mov x0, x20
	mov x1, #27
	mov x2, #0
	mov x3, #64
	mov x4, #9
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Rect inf interno

	//--Definimos color	
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos parámetros
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #28
	mov x2, #1
	mov x3, #62
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//----------
//--Capa 3--
//----------

//--Triang exteriores

	//--Definimos color	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Triang 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #0
	mov x2, #0
	mov x3, #13
	mov w10, w19
	bl draw_triangle_down
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Triang 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #0
	mov x2, #51
	mov x3, #13
	mov w10, w19
	bl draw_triangle_down
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Triang 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #21
	mov x2, #12
	mov x3, #11
	mov w10, w19
	bl draw_triangle_down
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Triang 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #21
	mov x2, #41
	mov x3, #11
	mov w10, w19
	bl draw_triangle_down
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Triang interiores

	//--Definimos color	
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Triang 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #1
	mov x2, #2
	mov x3, #9
	mov w10, w19
	bl draw_triangle_down
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Triang 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #1
	mov x2, #53
	mov x3, #9
	mov w10, w19
	bl draw_triangle_down
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Triang 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #22
	mov x2, #14
	mov x3, #7
	mov w10, w19
	bl draw_triangle_down
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Triang 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #22
	mov x2, #43
	mov x3, #7
	mov w10, w19
	bl draw_triangle_down
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//----------
//--Capa 4--
//----------

//--Rect exteriores

	//--Definimos color	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10

//--Col 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #4
	mov x2, #4
	mov x3, #5
	mov x4, #32
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Col 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #4
	mov x2, #55
	mov x3, #5
	mov x4, #32
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Col 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #24
	mov x2, #15
	mov x3, #5
	mov x4, #13
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Col 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #24
	mov x2, #44
	mov x3, #5
	mov x4, #13
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Rect interior

	//--Definimos color	
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Col 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #4
	mov x2, #5
	mov x3, #3
	mov x4, #31
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Col 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #4
	mov x2, #56
	mov x3, #3
	mov x4, #31
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Col 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #24
	mov x2, #16
	mov x3, #3
	mov x4, #12
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Col 4

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #24
	mov x2, #45
	mov x3, #3
	mov x4, #12
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Pared

//--Rect

	//--Definimos color	
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #25
	mov x2, #20
	mov x3, #24
	mov x4, #11
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Lineas

	//--Definimos color
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos parámetros
	mov w19, w10
	mov x20, x0
	
//--Linea sup
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #24
	mov x2, #20
	mov x3, #24
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19
	
//--Linea sup
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #36
	mov x2, #20
	mov x3, #24
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base
	mov x0, x20
	mov w10, w19

//--Gong

//--Cuerdas

	//--Definimos color	
	movz x10, 0xff42, lsl 16
	movk x10, 0x2e28, lsl 00
	
	//--Copiamos color
	mov w19, w10

//--Cuerda 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #3
	mov x2, #28
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Cuerda 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #3
	mov x2, #34
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Circulo ext
	
	//--Definimos color	
	movz x10, 0xff99, lsl 16
	movk x10, 0x900b, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #14
	mov x2, #31
	mov x3, #8
	mov w10, w19
	bl draw_circle_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Circulo int

	//--Definimos color	
	movz x10, 0xffcf, lsl 16
	movk x10, 0xc102, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #14
	mov x2, #31
	mov x3, #6
	mov w10, w19
	bl draw_circle_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//----------
//--Capa 5--
//----------

//--Fondo "ODC"

	//--Definimos color
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos parámetros
	mov w19, w10
	mov x20, x0
	
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #27
	mov x2, #23
	mov x3, #18
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--ODC

	//--Definimos color
	movz x10, 0xff26, lsl 16
	movk x10, 0x3238, lsl 00
	
	//--Copiamos parámetros
	mov w19, w10
	mov x20, x0

//--O

//--Rec 1
	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #29
	mov x2, #24
	mov x3, #2
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

	//--Rec 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #29
	mov x2, #27
	mov x3, #2
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #28
	mov x2, #25
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Line 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #32
	mov x2, #25
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--D

//--Rec 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #28
	mov x2, #30
	mov x3, #2
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Rec 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #29
	mov x2, #34
	mov x3, #1
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #28
	mov x2, #32
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Line 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #32
	mov x2, #32
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--C

//--Rec 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #28
	mov x2, #36
	mov x3, #2
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #28
	mov x2, #38
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Line 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #32
	mov x2, #38
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Cell 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #29
	mov x2, #39
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Cell 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #31
	mov x2, #39
	mov w10, w19
	bl draw_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--2

	//--Definimos color	
	movz x10, 0xff99, lsl 16
	movk x10, 0x900b, lsl 00
	
	//--Copiamos color
	mov w19, w10

//--Rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #15
	mov x2, #27
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #12
	mov x2, #30
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #11
	mov x2, #27
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Line 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #14
	mov x2, #28
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19//--Line 2

//--Line 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #16
	mov x2, #29
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
	
//--5

//--Rect 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #15
	mov x2, #34
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Rect 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #12
	mov x2, #32
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Line 1

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #11
	mov x2, #33
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Line 2

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #14
	mov x2, #33
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19//--Line 2

//--Line 3

	//--Cargamos los parametros	
	mov x0, x20
	mov x1, #16
	mov x2, #32
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//-------
//--Hud--
//-------

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

	//--Definimos color
	movz x10, 0xff18, lsl 16
	movk x10, 0xd61e, lsl 00
	
	//--Copiamos color
	mov w19, w10

//--Vida 1

	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #6
	mov x2, #3
	mov x3, #23
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
	mov x3, #23
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_color y color
	mov x0, x20
	mov w10, w19

//----------
//--Timmer--
//----------

	//--Definimos color
	movz x10, 0xffb8, lsl 16
	movk x10, 0x0404, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//--Primer dígito: 9--

//--Line 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #28
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
	mov x2, #28
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
	mov x2, #28
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Pixel 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #2
	mov x2, #28
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Pixel 2

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #2
	mov x2, #30
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Pixel 3

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #4
	mov x2, #30
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
