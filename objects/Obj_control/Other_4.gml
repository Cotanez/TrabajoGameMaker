/// @description Inserte aquí la descripción
audio_play_sound(Snd_Intro, 10, false);
instance_deactivate_object(Obj_enemy);

global.Enemigo = false;
global.Power = false;
global.Bonos = false;

alarm[0] = room_speed*10;
room_speed = 60;
