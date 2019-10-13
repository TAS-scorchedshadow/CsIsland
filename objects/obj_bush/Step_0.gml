/// @description Insert description here
// You can write your code in this editor
if first_check == false
{
	if image_index == 2
	{
		instance_create_layer(x,y,"Instances",obj_bush_wall)
	}
	first_check = true
}
if global.selecteditem == 2{
	
	if keyboard_check_pressed(ord("E")) and image_index == 2
	{
		if global.facing_direction == directions.right and place_meeting(x-32,y,obj_player)
		{
			global.bush_cut = true
			image_index = 3
			with (instance_nearest(x,y,obj_bush_wall))
			{
				instance_destroy()
			}
		}
		if global.facing_direction == directions.left and place_meeting(x+32,y,obj_player)
		{
			global.bush_cut = true
			image_index = 3
			with (instance_nearest(x,y,obj_bush_wall))
			{
				instance_destroy()
			}
		}
		if global.facing_direction == directions.up and place_meeting(x,y+32,obj_player)
		{
			global.bush_cut = true
			image_index = 3
			with (instance_nearest(x,y,obj_bush_wall))
			{
				instance_destroy()
			}
		}
		if global.facing_direction == directions.down and place_meeting(x,y-32,obj_player)
		{
			global.bush_cut = true
			image_index = 3
			with (instance_nearest(x,y,obj_bush_wall))
			{
				instance_destroy()
			}
		}
	}
}