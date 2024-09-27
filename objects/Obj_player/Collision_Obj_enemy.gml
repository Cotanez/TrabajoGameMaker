/// @description Inserte aquí la descripción
if !(global.Enemigo)
{
    audio_stop_all(); // Detenemos el sonido
    audio_play_sound(Snd_GameOver, 3, false); // Sonido muerte

    // Reiniciamos el personaje y config del juego
    room_speed = 50;
    Obj_control.alarm[1] = room_speed * 15;

    speed = 0; // Reiniciamos velocidad
    global.Vidas -= 1; // Restamos vida
    sprite_index = Spr_PlayerDeath; // Mostrar animación 
    image_index = 1;
    global.Enemigo = true;

    with (Obj_Bono)
    {
        instance_destroy();
    };
}