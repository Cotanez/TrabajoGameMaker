
global.Puntos += 10;

audio_play_sound(Snd_Tomar,2,false);

with (other)
	{
		instance_destroy();
	}