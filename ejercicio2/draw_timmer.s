.globl draw_timmer

draw_timmer:

	//--Dibuja el segundo dígito del timmer 
	//Como la animación dura 10s solo necesitamos modificar este
	
	//--Parámetros
	//x0 = framebuffer_base
	//x7 = digito 1-9
	
	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos	
	stp x19, x20, [sp, #-16]!
	stp x21, xzr, [sp, #-16]!
	
	
	//--Copiamos framebuffer_base
	mov x20, x0
	mov x21, x7
	
//--------------------------------------------
//Pintar fondo para pisar el dígito anterior--
//--------------------------------------------

//--Rect 1

	//--Definimos color
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #32
	mov x3, #3
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	
//--Rect 2

	//--Definimos color
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	//--Cargamos los parámetros
	mov x0, x20
	mov x1, #3
	mov x2, #32
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset 
	mov x0, x20
	mov w10, w19
	
//----------
//--Numero--
//----------
	
	//--Definimos color
	movz x10, 0xffb8, lsl 16
	movk x10, 0x0404, lsl 00
	
	//--Copiamos parametros
	mov w19, w10
	mov x21, x7

	//--Verificamos que numero debemos dibujar
	
	cmp x21, #0
	b.eq time_0
	
	cmp x21, #1
	b.eq time_1
	
	cmp x21, #2
	b.eq time_2
	
	cmp x21, #3
	b.eq time_3
	
	cmp x21, #4
	b.eq time_4
	
	cmp x21, #5
	b.eq time_5
	
	cmp x21, #6
	b.eq time_6
	
	cmp x21, #7
	b.eq time_7
	
	cmp x21, #8
	b.eq time_8
	
	cmp x21, #9
	b.eq time_9
	
time_0:

//--0

//--Line 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #32
	mov x3, #3
	mov w10, w19
	bl draw_line_cell

//--Line 2
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #5
	mov x2, #32
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
//--Rec 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #32
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Rec 2

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #34
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
	bl time_done

time_1:

//--1

//--Rec

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #34
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

	bl time_done
	
time_2:

//--2

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

//--Pixel 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #2
	mov x2, #34
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Pixel 2

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #4
	mov x2, #32
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

	bl time_done
	
time_3:

//--3

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

//--Rect 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #34
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

	bl time_done
	
time_4:

//--4

//--Line 1
	
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

//--Rect 1
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #34
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Pixel 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #32
	mov x3, #1
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

	bl time_done
	
time_5:

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

//--Pixel 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #2
	mov x2, #32
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Pixel 2

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #4
	mov x2, #34
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

	bl time_done
	
time_6:

//--6

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

//--Pixel 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #2
	mov x2, #32
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Pixel 2

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #4
	mov x2, #32
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Pixel 3

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #4
	mov x2, #34
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19


	bl time_done
	
time_7:

//--7
	
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

//--Rect 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #34
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
	bl time_done
	
time_8:

//--8

//--Line 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #32
	mov x3, #3
	mov w10, w19
	bl draw_line_cell

//--Line 2
	
	//--Cargamos parámetros
	mov x0, x20
	mov x1, #5
	mov x2, #32
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
//--Rec 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #32
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Rec 2

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #1
	mov x2, #34
	mov x3, #1
	mov x4, #5
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19

//--Pixel 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #3
	mov x2, #33
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19


	bl time_done
	
time_9:

//--9

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
	
//--Pixel 1

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #2
	mov x2, #32
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Pixel 2

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #2
	mov x2, #34
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19
	
//--Pixel 3

	//--Cargamos parámetros
	mov x0, x20
	mov x1, #4
	mov x2, #34
	mov w10, w19
	bl draw_cell
	
	//--Reset framebuffer_base y color
	mov x0, x20
	mov w10, w19


	bl time_done
	
time_done:




//--Restaurar registros y ret
	
	ldp x21, x22, [sp], #16
	ldp x19, x20, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret

