
if (room != rm_menu && room !=rm_title) {
	
	//Item GUI
	var c_width = 100
	var c_height = 950
	draw_set_font(font0)
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_sprite(spr_gui,0,c_width ,c_height)
	draw_sprite(spr_abilties,global.selecteditem,c_width ,c_height)
	
	//Objective
	if obj_player.hascontrol == true 
	{
		var w = display_get_gui_width();
		var h = display_get_gui_height();


		draw_set_font(fnt_cursive);
		draw_set_color(c_white);

		draw_text(w/2,h-150,objective);
	}
	
}

