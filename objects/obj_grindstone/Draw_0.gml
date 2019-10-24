if draw = true
{
	draw_set_font(dnt)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_colour(c_white)
	draw_text_ext_color(x+32,y-80,"[E]",5,300,c_white,c_white,c_white,c_white,alpha)
}
draw_self()