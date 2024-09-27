/// @description Inserte aquí la descripción
if sprite_index == Spr_PlayerDeath
	{
		direction = 0;
		image_speed = 0;
		x = xstart;
		y = ystart;
		sprite_index = Spr_playerdown;
		image_index = 0;
		
		global.Enemigo = false;
		audio_play_sound(Snd_Intro,10,false);
		
		with (Obj_enemy)
		{
			image_speed = 0;
			sprite_index = spr_enemydown;
			speed = 4;
			velocity = 4;
		}
	}
