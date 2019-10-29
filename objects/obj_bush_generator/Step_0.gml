/// @description
if first_check = true
{
	no_bush = instance_number(obj_bush)
	for (i = 0; i < (no_bush); i += 1)
	{
		var bush_id = instance_find(obj_bush,i)
		ds_grid_add(bush_map,i,0,bush_id)
		ds_grid_add(bush_map,i,1,bush_id.image_index)
	}
	first_check = false
}
if keyboard_check_pressed(ord("B"))
{
	for (i = 0; i < (no_bush); i += 1)
	{
		var bush_id = ds_grid_get(bush_map,i,0)
		bush_id.image_index = ds_grid_get(bush_map,i,1)
	}
	if bush_id.image_index = 2
	{
		if !(position_meeting(x,y,obj_bush_wall))
		{
			instance_create_layer(x,y,"Instances",obj_bush_wall)
		}
	}
	else if position_meeting(x,y,obj_bush_wall)
	{
		with (instance_nearest(x,y,obj_bush_wall)) instance_destroy()
	}
}