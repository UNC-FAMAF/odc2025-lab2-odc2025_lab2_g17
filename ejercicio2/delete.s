.globl delete

delete:

	//--Cuando pintamos un nuevo frame, "borra" los elementos
	//que ya no forman parte y quedaron del frame anterior
	
	//--Parametros
	//x0 = framebuffer_base
	//x5 = flag para decidir que borrar

	//--Salvar FP, LR	
	stp x29, x30, [sp, #-16]!
	mov x29, sp
	
	//--Salvar registros que usaremos	
	stp x19, x20, [sp, #-16]!
	stp x21, x22, [sp, #-16]!

	//--Copiamos parametros
	mov x20, x0
	mov x21, x5
	
	//--Condición para decidir que borrar
	
	cmp x21, #1		//paso incial
	b.eq delete_1
	
	cmp x21, #2		//desplazamiento incial
	b.eq delete_2
	
	cmp x21, #3		//segundo paso
	b.eq delete_3		
	
	cmp x21, #4		//segundo desplazamiento
	b.eq delete_4
	
	cmp x21, #5		//sc_punch
	b.eq delete_5
	
	cmp x21, #6		//sc_punch return
	b.eq delete_6
	
	cmp x21, #7		//sc_punch - sz_block
	b.eq delete_7
	
	cmp x21, #8		//sc_punch - sz_block return
	b.eq delete_8
	
	cmp x21, #9		//sz_punch
	b.eq delete_9
	
	cmp x21, #10		//sz_punch return
	b.eq delete_10
	
delete_1:

	//--Definimos color (gris piso)	
	movz x10, 0xff90, lsl 16
	movk x10, 0xa4ae, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//p1

	mov x0, x20
	mov x1, #38
	mov x2, #17
	mov x3, #4
	mov x4, #8
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

//p2

	mov x0, x20
	mov x1, #38
	mov x2, #43
	mov x3, #4
	mov x4, #8
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	b end_delete
	
	
delete_2:

//p1

	//--Definimos (gris piso)	
	movz x10, 0xff90, lsl 16
	movk x10, 0xa4ae, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #37
	mov x2, #4
	mov x3, #21
	mov x4, #10
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19


	mov x0, x20
	mov x1, #36
	mov x2, #4
	mov x3, #11
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

//------------ Cambio de color

	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #14
	mov x2, #9
	mov x3, #10
	mov x4, #13
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #23
	mov x2, #24
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
//------------ Cambio de color

	//--Definimos color (pared_claro)
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #21
	mov x2, #6
	mov x3, #2
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #28
	mov x2, #9
	mov x3, #5
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #26
	mov x2, #21
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #25
	mov x2, #21
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #35
	mov x2, #18
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
//------------ Cambio de color

	//--Definimos color (pared_oscruo)	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #15
	mov x2, #8
	mov x3, #1
	mov x4, #21
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #9
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #35
	mov x2, #9
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	mov x0, x20
	mov x1, #36
	mov x2, #18
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #23
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #24
	mov x2, #25
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

//p2

	//--Definimos (gris piso)	
	movz x10, 0xff90, lsl 16
	movk x10, 0xa4ae, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #37
	mov x2, #39
	mov x3, #21
	mov x4, #10
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19


	mov x0, x20
	mov x1, #36
	mov x2, #49
	mov x3, #11
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

//------------ Cambio de color

	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #14
	mov x2, #45
	mov x3, #10
	mov x4, #13
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #23
	mov x2, #39
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
//------------ Cambio de color

	//--Definimos color (pared1)
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #21
	mov x2, #56
	mov x3, #2
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #28
	mov x2, #50
	mov x3, #5
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #26
	mov x2, #41
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #25
	mov x2, #42
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #35
	mov x2, #45
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
//------------ Cambio de color

	//--Definimos color (pared2)	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #15
	mov x2, #55
	mov x3, #1
	mov x4, #21
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #53
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #35
	mov x2, #53
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #36
	mov x2, #44
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #40
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #24
	mov x2, #38
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19


	b end_delete

delete_3:

	//--Definimos color (gris piso)	
	movz x10, 0xff90, lsl 16
	movk x10, 0xa4ae, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
//p1

	mov x0, x20
	mov x1, #38
	mov x2, #20
	mov x3, #4
	mov x4, #8
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

//p2

	mov x0, x20
	mov x1, #38
	mov x2, #40
	mov x3, #4
	mov x4, #8
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

	b end_delete
	
delete_4:


//p1
	
	//--Definimos (gris piso)	
	movz x10, 0xff90, lsl 16
	movk x10, 0xa4ae, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #36
	mov x2, #7
	mov x3, #6
	mov x4, #11
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #37
	mov x2, #21
	mov x3, #6
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #15
	mov x2, #11
	mov x3, #10
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #21
	mov x2, #9
	mov x3, #4
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #14
	mov x2, #19
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #23
	mov x2, #27
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	//--Definimos color (pared-claro)
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #28
	mov x2, #11
	mov x3, #4
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #25
	mov x2, #24
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #23
	mov x2, #15
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #35
	mov x2, #21
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	//--Definimos color (pared-oscuro)	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #24
	mov x2, #15
	mov x3, #1
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #9
	mov x3, #18
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #35
	mov x2, #11
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #36
	mov x2, #17
	mov x3, #6
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #21
	mov x2, #12
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #24
	mov x2, #28
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

//p2
	
	//--Definimos (gris piso)	
	movz x10, 0xff90, lsl 16
	movk x10, 0xa4ae, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #36
	mov x2, #51
	mov x3, #6
	mov x4, #11
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #37
	mov x2, #37
	mov x3, #6
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #15
	mov x2, #43
	mov x3, #10
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #21
	mov x2, #51
	mov x3, #4
	mov x4, #6
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #14
	mov x2, #42
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #23
	mov x2, #36
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	//--Definimos color (pared-claro)
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #28
	mov x2, #49
	mov x3, #4
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #25
	mov x2, #38
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #23
	mov x2, #48
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #35
	mov x2, #42
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	//--Definimos color (pared-oscuro)	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #24
	mov x2, #48
	mov x3, #1
	mov x4, #7
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #37
	mov x3, #18
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #35
	mov x2, #50
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #36
	mov x2, #41
	mov x3, #6
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #21
	mov x2, #51
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #24
	mov x2, #35
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19


	b end_delete
	
delete_5:

	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #23
	mov x2, #25
	mov x3, #6
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (pared-claro)
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #25
	mov x2, #25
	mov x3, #7
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (pared-oscuro)	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #24
	mov x2, #25
	mov x3, #7
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #27
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

	b end_delete
	
	
delete_6:
	
	
	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #20
	mov x2, #26
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #37
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (ama_cla)
	movz x10, 0xffcf, lsl 16
	movk x10, 0xc102, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #18
	mov x2, #26
	mov x3, #11
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #20
	mov x2, #29
	mov x3, #5
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	//--Definimos color (ama_osc)
	movz x10, 0xff99, lsl 16
	movk x10, 0x900b, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #20
	mov x2, #27
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #26
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #21
	mov x2, #29
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #18
	mov x2, #37
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #36
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #20
	mov x2, #34
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	b end_delete
	
delete_7:
	
	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #23
	mov x2, #25
	mov x3, #14
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (pared-claro)
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #25
	mov x2, #25
	mov x3, #14
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (pared-oscuro)	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #24
	mov x2, #25
	mov x3, #14
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #27
	mov x3, #10
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	b end_delete
	
delete_8:

	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #20
	mov x2, #26
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #34
	mov x3, #4
	mov x4, #4
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (ama_cla)
	movz x10, 0xffcf, lsl 16
	movk x10, 0xc102, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #18
	mov x2, #27
	mov x3, #9
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #15
	mov x2, #36
	mov x3, #2
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #17
	mov x2, #33
	mov x3, #4
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #18
	mov x2, #26
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (ama_osc)
	movz x10, 0xff99, lsl 16
	movk x10, 0x900b, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #20
	mov x2, #27
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #16
	mov x2, #34
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #20
	mov x2, #35
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #26
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #21
	mov x2, #29
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #36
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #18
	mov x2, #37
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

	b end_delete

delete_9:

	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #23
	mov x2, #33
	mov x3, #6
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (pared-claro)
	movz x10, 0xff45, lsl 16
	movk x10, 0x5a64, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #25
	mov x2, #32
	mov x3, #7
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (pared-oscuro)	
	movz x10, 0xff37, lsl 16
	movk x10, 0x474f, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #24
	mov x2, #32
	mov x3, #7
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #27
	mov x2, #34
	mov x3, #3
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19


	b end_delete

delete_10:

	//--Definimos color (cielo)
	movz x10, 0xff00, lsl 16
	movk x10, 0x233d, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #20
	mov x2, #35
	mov x3, #3
	mov x4, #3
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #26
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	//--Definimos color (ama_cla)
	movz x10, 0xffcf, lsl 16
	movk x10, 0xc102, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #18
	mov x2, #27
	mov x3, #11
	mov x4, #2
	mov w10, w19
	bl draw_rect_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #20
	mov x2, #30
	mov x3, #5
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	
	//--Definimos color (ama_osc)
	movz x10, 0xff99, lsl 16
	movk x10, 0x900b, lsl 00
	
	//--Copiamos color
	mov w19, w10
	
	mov x0, x20
	mov x1, #20
	mov x2, #35
	mov x3, #2
	mov w10, w19
	bl draw_line_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #37
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #21
	mov x2, #34
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #18
	mov x2, #26
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #19
	mov x2, #27
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19
	
	mov x0, x20
	mov x1, #20
	mov x2, #29
	mov w10, w19
	bl draw_cell
	
	//--Reset
	mov x0, x20
	mov w10, w19

	
	b end_delete


end_delete:	
	
//--Restaurar registros y ret
	
	ldp x21, x22, [sp], #16
	ldp x19, x20, [sp], #16
	mov sp, x29
	ldp x29, x30, [sp], #16
	
	ret
	
