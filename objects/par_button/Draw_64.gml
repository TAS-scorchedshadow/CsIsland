if global.selectedbutton = buttonid 
{
	image_index = 1 
}
else image_index = 0
draw_self();
draw_set_font(dnt_larger)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(x,y,text)
