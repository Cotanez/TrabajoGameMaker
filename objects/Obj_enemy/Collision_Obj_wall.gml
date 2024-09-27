/// @description Colision con plataforma y pared

hspeed = -hspeed;
vspeed = -vspeed;

//Asignamos el movimiento aleatorio
#region
if place_snapped(32,32)
	{
		if hspeed == 0
		{
			if random(4) <1 && place_free(x-1,y) // Mov. Izquierda
			{
				hspeed = -velocity;
				vspeed = 0;
			}
			if random(4) <1 && place_free(x+1,y) // Mov. Derecha
			{
				hspeed = velocity;
				vspeed = 0;
			}
		}
		else
		{
			if random(4) <1 && place_free(x,y-1) // Mov. Arriba
			{
				hspeed = 0;
				vspeed = -velocity;
			}
			if random(4) <1 && place_free(x,y+1) // Mov. Abajo
			{
				hspeed = 0;
				vspeed = velocity;
			}
		}
	}
#endregion