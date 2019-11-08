if first_check = false
{
	for (i = 0; i < (no_bush); i += 1)
	{
		var bush_id = instance_find(obj_bush,i);
		ds_grid_add(bush_map,i,0,bush_id);
		ds_grid_add(bush_map,i,1,bush_id.image_index);
	}
	for (i = 0; i < (no_boulder); i += 1)
	{
		var boulder_id = instance_find(obj_boulder,i);
		ds_grid_add(boulder_map,i,0,boulder_id);
		ds_grid_add(boulder_map,i,1,boulder_id.x);
		ds_grid_add(boulder_map,i,2,boulder_id.y);
	}
	first_check = true
	for (i = 0; i < (no_flamingo); i += 1)
	{
		var flamingo_id = instance_find(obj_snakehead,i);
		ds_grid_add(flamingo_map,i,0,flamingo_id);
		ds_grid_add(flamingo_map,i,1,flamingo_id.x);
		ds_grid_add(flamingo_map,i,2,flamingo_id.y);
	}
}
