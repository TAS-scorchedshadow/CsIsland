/// @description Cut the bushes
if first_check == false  //check if the bush is fully grown, if so, create an obj_bush_wall
{
	if image_index == 2
	{
		instance_create_layer(x,y,"Instances",obj_bush_wall)
	}
	first_check = true
}
if global.selecteditem == 0 and global.no_cut > 0 {
	
	if keyboard_check_pressed(ord("E")) and image_index == 2 
	{
		if global.facing_direction == directions.right and place_meeting(x-64,y,obj_player)
		{
			global.bush_cut = true
			image_index = 3
			with (instance_nearest(x,y,obj_bush_wall))
			{
				instance_destroy()
			}
			global.no_cut--
		}
		if global.facing_direction == directions.left and place_meeting(x+64,y,obj_player)
		{
			global.bush_cut = true
			image_index = 3
			with (instance_nearest(x,y,obj_bush_wall))
			{
				instance_destroy()
			}
			global.no_cut--
		}
		if global.facing_direction == directions.up and place_meeting(x,y+64,obj_player)
		{
			global.bush_cut = true
			image_index = 3
			with (instance_nearest(x,y,obj_bush_wall))
			{
				instance_destroy()
			}
			global.no_cut--
		}
		if global.facing_direction == directions.down and place_meeting(x,y-64,obj_player)
		{
			global.bush_cut = true
			image_index = 3
			with (instance_nearest(x,y,obj_bush_wall))
			{
				instance_destroy()
			}
			global.no_cut--
		}
	}
}