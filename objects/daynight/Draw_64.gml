/// @description Draw rectangle
darkness = clamp(darkness,0,0.8)
var c = light_colour;
draw_set_alpha(darkness);
draw_rectangle_color(0,0,guiWidth,guiHeight,c,c,c,c,false);
draw_set_alpha(1);

