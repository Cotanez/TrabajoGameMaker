//Llamamos la función y asifnamos las teclas para dirección
right_key = keyboard_check( vk_right );
left_key = keyboard_check( vk_left );
jump_key = keyboard_check_pressed( vk_space );

//Calculamos la velocidad de movimiento
xspd = ( right_key - left_key ) * move_spd;


//Colision horizontal
var _subPixel = 0.5;
if place_meeting( x + xspd, y, Obj_wall ) == true
	{
		//Deslizar la pared con precisión
		var _pixelCheck = _subPixel * sign(xspd);
		while !place_meeting( x+ _pixelCheck, y, Obj_wall )
		{
			x+= _pixelCheck;
		}
	
		//Establecemos xspd con valor 0 al momento de colisionar
		xspd = 0;
	}
x+= xspd;


//Movimiento de Y Gravedad

//Gravedad
yspd += gravedad;

//Salto
if jump_key && place_meeting( x,y+1,Obj_wall )
	{
		yspd = jspd;
	}

//Colision Y
var _subPixel = 0.5;

if place_meeting(x,y + yspd,Obj_wall)
	{
		var _pixelCheck = _subPixel * sign(yspd);
		while !place_meeting(x,y + _pixelCheck, Obj_wall)
		{
			y+= _pixelCheck;
		}
		
		//Establecer y a 0 cuando colisione
		yspd = 0;
	}

//Movimiento
y += yspd;
