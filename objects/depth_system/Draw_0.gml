/// @description Drawing Objects + Shadows



//===Drawing Shadows===//

//Postion Sun
var sx = 0 - (hours) * 6; 
var sy = (hours) * 4; 

with (obj_solid){
	if !variable_instance_exists(id, "shadow") shadow = false
	if shadow = true
		{
		gpu_set_fog(true,c_black,0,1)
		draw_sprite_pos(sprite_index,image_index,
			x-(sprite_width/2) - sx, y - sy,
			x+(sprite_width/2) - sx,y-sy,
			x+(sprite_width/2), y,
			x-(sprite_width/2),y,0.5);
		gpu_set_fog(false,c_white,0,1);
	}
}

//===Drawing Sprites at proper depth===//
var dgrid = ds_depthgrid;
var inst_num = instance_number(obj_solid);
ds_grid_resize(dgrid,2,inst_num);     

//Add Instance Info to Grid
var yy = 0;
with(obj_solid){
	dgrid[# 0,yy]  = id;
	dgrid[# 1,yy] = y;
	yy++;
	
}
//Sort grid in ascending order
ds_grid_sort(dgrid,1,true);


//Loop through the grid and draw the instances
var inst
yy = 0;
repeat(inst_num){
	inst = dgrid[# 0,yy];
	//get instance to draw
	with (inst){
		event_perform(ev_draw,0)
	}
	yy++
}



