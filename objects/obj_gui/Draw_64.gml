///@description draw GUI
if (room != rm_menu && room !=rm_title) && instance_exists(obj_player) {
	if blackbars = true
	{
		var w = display_get_gui_width();
		var h = display_get_gui_height();
		draw_set_color(c_black);
		draw_rectangle(0,0,w,150,false);
		draw_rectangle(0,h,w,h-150,false);
	}
	
	else
	{
		draw_set_font(fnt_cursive);
		//Item GUI
		var c_width = 100
		var c_height = 1000
		var drawn_item_id = global.selecteditem;
		draw_set_font(dnt_large)
		draw_set_color(c_black)
		draw_set_halign(fa_left)
		
		if (global.selecteditem = 0)
		{
			draw_text(c_width+60,c_height+ 50,"Bush Knife" +"[" +string(global.no_cut) + "]");
			drawn_item_id = 0
		
			if global.no_cut <= 0
			{
			drawn_item_id = 3
			}
		}

		if global.selecteditem = 1
		{
			draw_text(c_width+60,c_height+50,"Flute")
		}
		
			if global.selecteditem = 2
		{
			draw_text(c_width+60,c_height+50,"Call For Help")
		}

		draw_sprite_ext(spr_abilties,drawn_item_id,c_width ,c_height,2,2,0,c_white,1);
	
		draw_set_halign(fa_center);
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
	
}

