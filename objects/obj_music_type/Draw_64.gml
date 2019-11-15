if global.selectedbutton = buttonid 
{
	image_index = 1 
}
else image_index = 0
draw_self();
draw_set_font(dnt_large)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
var text = "OFF"
if obj_menuscreen.album = 1 text = "Folk Music"
if obj_menuscreen.album = 2 text = "Other Music"
draw_text(x,y,"Music Type: " + text)