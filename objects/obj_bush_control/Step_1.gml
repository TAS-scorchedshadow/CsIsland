if first_check = false
{
	for (i = 0; i < (no_bush); i += 1)
	{
		var bush_id = instance_find(obj_bush,i);
		ds_grid_add(bush_map,i,0,bush_id);
		ds_grid_add(bush_map,i,1,bush_id.image_index);
	}
	first_check = true
}
