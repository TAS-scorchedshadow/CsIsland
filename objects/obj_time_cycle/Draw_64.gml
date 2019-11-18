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
var text = "OFF"
if obj_menuscreen.time = 1 text = "Slow"
if obj_menuscreen.time = 2 text = "Fast"
draw_text(x,y,"Day Cycle: " + text)