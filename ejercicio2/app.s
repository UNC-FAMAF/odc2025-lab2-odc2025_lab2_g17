	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------
	

//-----------
//--Frame 1--
//-----------
	
	//--Background
	mov x0, x20
	bl draw_background
	
	//--Timmer 99
	mov x0, x20
	mov x7, #9
	bl draw_timmer
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #4
	mov x5, #1
	mov x6, #1
	bl draw_player_1
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #31
	mov x5, #1
	mov x6, #1
	bl draw_player_2

//-----------
//--Frame 2--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #1
	bl delete
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #4
	mov x5, #2
	mov x6, #1
	bl draw_player_1
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #31
	mov x5, #2
	mov x6, #1
	bl draw_player_2

//-----------
//--Frame 3--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #2
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #8
	bl draw_timmer
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #7
	mov x5, #1
	mov x6, #1
	bl draw_player_1
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #28
	mov x5, #1
	mov x6, #1
	bl draw_player_2
	
//-----------
//--Frame 4--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #3
	bl delete
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #7
	mov x5, #2
	mov x6, #1
	bl draw_player_1
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #28
	mov x5, #2
	mov x6, #1
	bl draw_player_2
	
//-----------
//--Frame 5--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #4
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #7
	bl draw_timmer
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2
	
//-----------
//--Frame 6--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #5
	bl delete
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #3
	bl draw_player_1
	
//-----------
//--Frame 7--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #6
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #6
	bl draw_timmer
	
	//--Daño
	mov x0, x20
	mov x5, #2
	mov x6, #1
	bl draw_damage
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1
	
//-----------
//--Frame 8--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #7
	bl delete
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #2
	bl draw_player_2
	
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #3
	bl draw_player_1
	
//-----------
//--Frame 9--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #8
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #5
	bl draw_timmer
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2
		
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1

//-----------
//--Frame 10--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #9
	bl delete
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1	
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #3
	bl draw_player_2

//-----------
//--Frame 11--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #10
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #4
	bl draw_timmer
	
	//--Daño
	mov x0, x20
	mov x5, #1
	mov x6, #1
	bl draw_damage
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1	
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2

//-----------
//--Frame 12--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #7
	bl delete
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #2
	bl draw_player_2
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #3
	bl draw_player_1
	
//-----------
//--Frame 13--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #8
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #3
	bl draw_timmer
	
	//--Daño
	mov x0, x20
	mov x5, #1
	mov x6, #1
	bl draw_damage
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1	
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2
	
//-----------
//--Frame 14--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #9
	bl delete
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1	
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #3
	bl draw_player_2

//-----------
//--Frame 15--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #10
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #2
	bl draw_timmer
	
	//--Daño
	mov x0, x20
	mov x5, #1
	mov x6, #2
	bl draw_damage
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1	
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2
	
//-----------
//--Frame 16--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #5
	bl delete
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #3
	bl draw_player_1
	
//-----------
//--Frame 17--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #6
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #1
	bl draw_timmer
	
	//--Daño
	mov x0, x20
	mov x5, #2
	mov x6, #2
	bl draw_damage
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1
	
//-----------
//--Frame 12--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #7
	bl delete
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #2
	bl draw_player_2
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #3
	bl draw_player_1
	
//-----------
//--Frame 13--
//-----------

	//delay
	bl delay_1s
	
	//--delete 
	mov x0, x20
	mov x5, #8
	bl delete
	
	//--Timmer 99
	mov x0, x20
	mov x7, #0
	bl draw_timmer
	
	//--Scorpion
	mov x0, x20
	mov x1, #14
	mov x2, #10
	mov x5, #1
	mov x6, #1
	bl draw_player_1	
	
	//--Subzero	
	mov x0, x20
	mov x1, #14
	mov x2, #25
	mov x5, #1
	mov x6, #1
	bl draw_player_2





	
	// Ejemplo de uso de gpios
	mov x9, GPIO_BASE

	// Atención: se utilizan registros w porque la documentación de broadcom
	// indica que los registros que estamos leyendo y escribiendo son de 32 bits

	// Setea gpios 0 - 9 como lectura
	str wzr, [x9, GPIO_GPFSEL0]

	// Lee el estado de los GPIO 0 - 31
	ldr w10, [x9, GPIO_GPLEV0]

	// And bit a bit mantiene el resultado del bit 2 en w10
	and w11, w10, 0b10

	// w11 será 1 si había un 1 en la posición 2 de w10, si no será 0
	// efectivamente, su valor representará si GPIO 2 está activo
	lsr w11, w11, 1

	//---------------------------------------------------------------
	// Infinite Loop

InfLoop:
	b InfLoop
