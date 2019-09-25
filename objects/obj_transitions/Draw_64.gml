/// @description Draw black bars
if (mode != TRANS_MODE.OFF)
{
	var col = make_colour_hsv(22, 50, 30);
	draw_set_colour(col);
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
	
}

if (mode == TRANS_MODE.NULL)
{
draw_set_font(fnt_title)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_alpha(i)
draw_text(w/2,h/2,"Charlotte's Island")
i += 0.05
i = clamp(i,0,1);
}

draw_set_color(c_white);
draw_text(50,50,string(w));