/// @description Drawing Depths
var dgrid = ds_depthgrid;
var inst_num = instance_number(obj_solid);
ds_grid_resize(dgrid,2,inst_num);

//Add Instance Info to Grid
var yy = 0;
with(obj_solid){
	ds_grid_add(dgrid,0,0,id);
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
		event_perform(ev_draw,0);
	}
	yy++
}
