/// @description Changing bush index when a bush is cut
if instance_exists(obj_bush)
{
	if global.bush_cut == true
	{
		with (obj_bush)
		{	
			if place_meeting(x,y,obj_solid) = false
			{
				if image_index == 1
				{
					image_index ++
					instance_create_layer(x,y,"Instances",obj_bush_wall) //When growing into full grown bush, create a wall obj on the bush
				}
				if image_index == 0
				{
					image_index ++
				}

			}
			if image_index == 3
			{
				image_index = 0
			}
		global.bush_cut = false
		}
	}
}

if global.bush_reset = true{    //Reset the layout of the bushes
	if instance_exists(obj_bush)
	{
		for (i = 0; i < (no_bush); i += 1)
		{
			var bush_id = ds_grid_get(bush_map,i,0);
			bush_id.image_index = ds_grid_get(bush_map,i,1);
		}
		with (obj_bush)
		{
			if image_index = 2
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
	}
	if (instance_exists(obj_boulder))
	{
		for (i = 0; i < (no_boulder); i += 1)
		{
			var boulder_id = ds_grid_get(boulder_map,i,0);
			boulder_id.x = ds_grid_get(boulder_map,i,1);
			boulder_id.y = ds_grid_get(boulder_map,i,2);
		}
	}
	if (instance_exists(obj_snakehead))
	{
		for (i = 0; i < (no_flamingo); i += 1)
		{
			var flamingo_id = ds_grid_get(flamingo_map,i,0);
			flamingo_id.x = ds_grid_get(flamingo_map,i,1);
			flamingo_id.y = ds_grid_get(flamingo_map,i,2);
		}
	}
	global.bush_reset = false
}
// Reset player position when flute is used
if global.selecteditem == 2 and global.can_flute == true and global.checkpoint_x != 0 and global.checkpoint_y != 0 and !instance_exists(obj_pick_flamingo)
{
	if keyboard_check_pressed(vk_space)
	{
		obj_player.hascontrol = false
		instance_create_layer(x,y,"Instances",obj_pick_flamingo)
	}
}