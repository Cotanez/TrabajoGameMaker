/// @description Inserte aquí la descripción

if !(audio_is_playing(Snd_Intro))
	{
		instance_activate_object(Obj_enemy);
	}

if global.Vidas == 0
	{
		with(Obj_enemy)
		{
			instance_destroy();
		}
		with(Obj_Bono)
		{
			instance_destroy();
		}
		with(Obj_pokeball)
		{
			instance_destroy();
		}
		with(Obj_obstaculo)
		{
			instance_destroy();
		}
	}
