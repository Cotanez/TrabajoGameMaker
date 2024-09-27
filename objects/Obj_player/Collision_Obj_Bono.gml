global.Puntos += 100;
global.Bonos = true;

audio_play_sound(Snd_Tomar,2,false);

with(other)
	{
		instance_destroy();
	}