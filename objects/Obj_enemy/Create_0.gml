/// @descripcion configuracion enemigo
randomize();
sprite_index = spr_enemydown;
image_index = 0;

// Iniciamos el movimiento del enemigo

velocity = 4;
direction = choose(0,90,180,270);
motion_set(direction,velocity);