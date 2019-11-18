/// @description Draw rectangle
var daarkness = clamp(darkness - 0.2,0,0.6)
var c = light_colour;
draw_set_alpha(daarkness);
draw_rectangle_color(0,0,guiWidth,guiHeight,c,c,c,c,false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_text(50,50,string(hours));
