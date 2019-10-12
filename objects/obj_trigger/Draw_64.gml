///@desc Show_Objective(color,text)
if (objective == true && obj_player.hascontrol == true)
{
	var w = display_get_gui_width();
	var h = display_get_gui_height();


	draw_set_font(fnt_cursive);
	draw_set_color(c_white);

	draw_text(w/2,h-150,text);
}