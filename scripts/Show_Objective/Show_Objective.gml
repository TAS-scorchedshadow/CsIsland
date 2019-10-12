///@desc Show_Objective(color,text)

var w = display_get_gui_width();
var h = display_get_gui_height();

draw_set_font(fnt_title);
draw_set_color(argument0);

draw_text(w/2,h-200,argument1);