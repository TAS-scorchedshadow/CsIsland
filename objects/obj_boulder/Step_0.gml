/// @description Check player direction
move_direction = ""
if boulder_moving = false //check if bush is moving
{
	if keyboard_check_pressed(vk_space)
	{
		//push boulder right
		if global.facing_direction == directions.right and place_meeting(x-32,y,obj_player)
		{	
			if position_meeting(x+move,y,obj_bush) and !position_meeting(x+move,y,obj_solid)
			{
				var object_bush = instance_position(x+move,y,obj_bush)
				if object_bush.image_index != 2
				{
					move_direction = directions.right
				}
			}
			else if position_meeting(x+move,y,obj_button)
			{
				var object_button = instance_position(x+move,y,obj_button)
				if object_button.pressed == false
				{
					move_direction = directions.right
				}
			}
			else if !place_meeting(x+move,y,obj_solid)
			{
				move_direction = directions.right
			}
		}
		//bush boulder left
		if global.facing_direction == directions.left and place_meeting(x+32,y,obj_player)
		{
			if position_meeting(x-move,y,obj_bush) and !position_meeting(x-move,y,obj_solid)
			{
				var object_bush = instance_position(x-move,y,obj_bush)
				if object_bush.image_index != 2
				{
					move_direction = directions.left
				}
			}
			else if position_meeting(x-move,y,obj_button)
			{
				var object_button = instance_position(x-move,y,obj_button)
				if object_button.pressed == false
				{
					move_direction = directions.left
				}
			}
			else if !place_meeting(x-move,y,obj_solid)
			{
				move_direction = directions.left
			}
		}
		//push boulder down
		if global.facing_direction == directions.down and place_meeting(x,y-32,obj_player)
		{
			if position_meeting(x,y+move,obj_bush) and !position_meeting(x,y+move,obj_solid)
			{
				var object_bush = instance_position(x,y+move,obj_bush)
				if object_bush.image_index != 2
				{
					move_direction = directions.down
				}
			}
			else if position_meeting(x,y+move,obj_button)
			{
				var object_button = instance_position(x,y+move,obj_button)
				if object_button.pressed == false
				{
					move_direction = directions.down
				}
			}
			else if !place_meeting(x,y+move,obj_solid)
			{
				move_direction = directions.down
			}
		}
		//push boulder up
		if global.facing_direction == directions.up and place_meeting(x,y+32,obj_player)
		{
			if position_meeting(x,y-move,obj_bush) and !position_meeting(x,y-move,obj_solid)
			{
				var object_bush = instance_position(x,y-move,obj_bush)
				if object_bush.image_index != 2
				{
					move_direction = directions.up
				}
			}
			else if position_meeting(x,y-move,obj_button)
			{
				var object_button = instance_position(x,y-move,obj_button)
				if object_button.pressed == false
				{
					move_direction = directions.up
				}
			}
			else if !place_meeting(x,y-move,obj_solid)
			{
				move_direction = directions.up
			}
		}

	}
}
if move_direction == directions.right
{
	boulder_moving = true;
	xx = 1;
	yy = 0;
	alarm[0] = 1;
}
if move_direction == directions.left
{
	boulder_moving = true;
	xx = -1;
	yy = 0;
	alarm[0] = 1;
}
if move_direction == directions.up
{
	boulder_moving = true;
	xx = 0;
	yy = -1;
	alarm[0] = 1;
}
if move_direction == directions.down
{
	boulder_moving = true;
	xx = 0;
	yy = 1;
	alarm[0] = 1;
}