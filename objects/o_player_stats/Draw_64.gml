/// @description Drwas the GUI based on the room
if (room == r_title)
{
	draw_set_halign(fa_center);
	draw_set_font(f_title);
	draw_text_color(room_width/2 + 4,24 + 6,"Hoehlenjunge",c_black,c_black,c_black,c_black,.4);
	draw_text_color(room_width/2, 24, "Hoehlenjunge",c_white,c_white, c_white, c_black,.6);
	
	draw_set_font(f_start);
	draw_text_color(room_width/2 + 1, room_height - 30 + 1,"Druecke Space zum starten",c_black,c_black,c_black,c_black,1);
	draw_text_color(room_width/2, room_height - 30 ,"Druecke Space zum starten",c_white, c_white, c_white,c_white,.8);
}

if (room !=r_title)
{
	
	// Draw health
	 for (var i = 1; i <= hp; ++i)
	 {
		 draw_sprite_ext(s_heart,0,(i * 25) - 10, 15, 1, 1, 0, c_white, 1);
	 }
		 
	// Draw score
	
	draw_set_font(f_score);
	draw_set_halign(fa_left);
	draw_text(5,25,"Score:" + string(sapphires));
	
	
	
}