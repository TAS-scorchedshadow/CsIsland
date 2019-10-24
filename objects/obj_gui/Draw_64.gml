///@description draw GUI
if (room != rm_menu && room !=rm_title) && instance_exists(obj_player) {
	
	draw_set_font(fnt_cursive);
	//Item GUI
	var c_width = 100
	var c_height = 950
	var drawn_item_id = global.selecteditem;
	draw_set_font(font0)
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_sprite(spr_gui,0,c_width ,c_height)
	if (global.selecteditem = 2)
	{
		draw_set_color(c_black);
		draw_text(c_width,c_height-200,global.no_cut);
		drawn_item_id = 2
		
		if global.no_cut <= 0
		{
		drawn_item_id = 3
		}
	}

	draw_sprite(spr_abilties,drawn_item_id,c_width ,c_height)
	
	//Objective
	if obj_player.hascontrol == true 
	{
		var w = display_get_gui_width();
		var h = display_get_gui_height();


	
		draw_set_color(c_white);
		draw_set_font(fnt_cursive);

		draw_text(w/2,h-150,global.objective);
	}
	
}

