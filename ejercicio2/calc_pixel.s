	.equ WIDTH, 640
.globl calc_pixel

calc_pixel:
	//recibe 
	//x0 = framebuffer base
	//x1 = row
	//x2 = column
	//calcula la dirección del pixel y la devuelve en x0
	
	mov x12, #WIDTH		//x12 = width
	mul x12, x12, x1	//x12 = row * width
	add x12, x12, x2	//x12 = column + (row * width)
	lsl x12, x12, #2	//x12 = [column + (row * width)]*4
	add x0, x0, x12		//pixel add = x0 + x12
	
	ret
