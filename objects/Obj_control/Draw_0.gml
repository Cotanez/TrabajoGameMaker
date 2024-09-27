//Dibujar el score
#region
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Fnt_Score);
draw_text(32,16,"PUNTAJE:"+string(global.Puntos));

#endregion

//Dibujar las vidas
#region
draw_text(room_width/2,16,"VIDAS:       ");
//Loop para verificar la cantidad de vidas que tiene
for (var i = 0; i < global.Vidas; i+= 1)
{
	draw_sprite_stretched(Spr_playerhealth,2,room_width/2+string_width("VIDAS:       ")+ (i*32),16,32,32);
	
}

#endregion

//Dibujar el ready
#region
#endregion

//Dibujar el bono
#region
#endregion

//Dibujar el GameOver
#region
#endregion