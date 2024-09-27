//Asignación de teclas
Der_tecla = keyboard_check( ord( "D" ) ) || keyboard_check(vk_right);
Izq_tecla = keyboard_check( ord( "A" ) ) || keyboard_check(vk_left);
Arriba_tecla = keyboard_check( ord( "W" ) ) || keyboard_check(vk_up);
Abajo_tecla = keyboard_check( ord( "S" ) ) || keyboard_check(vk_down);
item_key = keyboard_check_pressed( ord( "E" ) );


//Calcular la velocidad del personaje
xspd = (Der_tecla - Izq_tecla) * move_spd;
yspd = (Abajo_tecla - Arriba_tecla) * move_spd;


//Asignar los sprites
mask_index = sprite[DOWN];

if yspd == 0
{
	if xspd > 0 { face = RIGHT };
	if xspd < 0 { face = LEFT };
}

if xspd == 0
{
	if yspd > 0 { face = DOWN };
	if yspd < 0 { face = UP };
}

sprite_index = sprite[face];


//Colisiones
if place_meeting( x + xspd, y, Obj_wall ) == true
{
	xspd = 0;
}

if place_meeting( x, y + yspd, Obj_wall ) == true
{
	yspd = 0;
}


//Incrementar velocidad
x = x + xspd;
y += yspd;


//
if xspd == 0 && yspd == 0
{
	image_index = 0;
}

depth = - bbox_bottom;
