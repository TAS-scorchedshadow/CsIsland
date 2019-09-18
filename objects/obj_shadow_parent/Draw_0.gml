/// @description Drawing Shadows
var sx = (960 - mouse_x);
var sy = (540-mouse_y);
gpu_set_fog(true,c_black,0,1)
draw_sprite_pos(sprite_index,image_index,
	x+(sprite_width/2) - sx, y - sy,
	x-(sprite_width/2) - sx,y-sy,
	x-(sprite_width/2), y,
	x+(sprite_width/2),y,0.5);
gpu_set_fog(false,c_white,0,1);
draw_self();