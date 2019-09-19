/// @description Draw rectangle
darkness = clamp(darkness,0,0.8)
var c = light_colour;
draw_set_alpha(darkness);
draw_rectangle_color(0,0,guiWidth,guiHeight,c,c,c,c,false);
draw_set_alpha(1);

var c = c_yellow;
draw_text_color(30,30,string(minutes),c,c,c,c,1);
draw_text_color(30,50,string(hours),c,c,c,c,1);