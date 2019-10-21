/// @description Draw transition
if (mode != TRANS_MODE.OFF)
{
	var col = make_colour_hsv(22, 50, 30);
	draw_set_colour(col);
	draw_sprite_part(spr_wood_planks,0,0,0,w,percent*h_half,0,0);
	draw_sprite_part(spr_wood_planks,0,0,(h - percent*h_half),w,h,0,(h - percent*h_half));
	
}

if (mode == TRANS_MODE.NULL)
{
	draw_set_font(fnt_title)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	
	draw_set_alpha(opacity)
	draw_sprite(spr_logo,0,w - 150 ,h - 150)
	
	draw_text(w/2,h/2,"Charlotte's Island")
	draw_text(w/2,h/2 + 100,lvl_name)
	
	opacity += 0.05
	opacity = clamp(opacity,0,1);
}
