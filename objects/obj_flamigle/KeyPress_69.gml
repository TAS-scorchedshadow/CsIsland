/// @description Detect Selection
var flamingo = false;
with (obj_player)
	{
		if global.facing_direction == directions.up 
		{
			if place_meeting(x,y-10,other) 
				{
					show_debug_message("Flamingo Found (UP)")
					flamingo = true;
				}
		}
		if global.facing_direction == directions.down
		{
			if place_meeting(x,y+10,other) 
				{
					show_debug_message("Flamingo Found (DOWN)")
					flamingo = true;
				}
		}
		if global.facing_direction == directions.left 
		{
			if place_meeting(x-30,y,other) 
				{
					show_debug_message("Flamingo Found (LEFT)")
					flamingo = true;
				}
		}
		if global.facing_direction == directions.right
		{
			if place_meeting(x+30,y,other) 
				{
					show_debug_message("Flamingo Found (RIGHT)")
					flamingo = true;
				}
		}
	}
if flamingo == true 
{
	if !variable_instance_exists(self,"correct") correct = false;
	if correct == true 
	{
		instance_create_layer(x,y+20,"Instances",obj_grindstone)
		instance_destroy(self);
	}
	else
	{
		room_restart();
	}
}