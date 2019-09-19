/// @description Drawing Shadows
with (obj_solid){
	draw_self();
	if !variable_instance_exists(id, "shadow") shadow = false
	if shadow = true
		{
		if instance_exists(obj_light)
		{
		var sx = (obj_light.x - x) / 4; 
		var sy = (obj_light.y - y) / 4;

		sx = clamp(sx,-(2*sprite_width),(2*sprite_width))
		sy = clamp(sy,-(2*sprite_height),2*sprite_height)
		gpu_set_fog(true,c_black,0,1)
		draw_sprite_pos(sprite_index,image_index,
			x-(sprite_width/2) - sx, y - sy,
			x+(sprite_width/2) - sx,y-sy,
			x+(sprite_width/2), y,
			x-(sprite_width/2),y,0.5);
		gpu_set_fog(false,c_white,0,1);
		}
	}
}