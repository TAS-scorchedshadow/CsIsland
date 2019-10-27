if draw = true
{
	draw_set_font(dnt)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_colour(c_white)
	draw_text_ext_color(x+32,y-80,"[E]",5,300,c_white,c_white,c_white,c_white,alpha)
}

if d_text == true
{
	draw_text_ext_color(x-50,y - 64 -height_above,+string(reset_no)+" cuts left",5,300,c_white,c_white,c_white,c_white,alpha)
	height_above += 0.1
	if height_above >= 30 or mode == ""
	{
		d_text = false;
		height_above = 0;
	}
	
}
draw_self()