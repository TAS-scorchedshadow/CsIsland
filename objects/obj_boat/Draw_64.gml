if room = rm_landing && image_index = 0
{
	var w = display_get_gui_width();
	var h = display_get_gui_height();
	draw_set_color(c_black);
	draw_rectangle(0,0,w,100,false);
	draw_rectangle(0,h,w,h-100,false);
}