/// @description Check player direction
if first_check == false
{
	if image_index == 2
	{
		instance_create_layer(x,y,"Instances",obj_bush_wall)
	}
	first_check = true
}	
if boulder_moving = false
{
	if keyboard_check_pressed(ord("E"))
	{
		if global.facing_direction == directions.right and place_meeting(x-32,y,obj_player) and place_free(x+32,y)
		{
			boulder_moving = true
			xx = 1
			yy = 0;
			alarm[0] = 1
		}

	}
}