/// @description Check player direction
if boulder_moving = false //check if bush is moving
{
	if keyboard_check_pressed(ord("E"))
	{
		//push boulder to the right
		if global.facing_direction == directions.right and place_meeting(x-32,y,obj_player) and (place_free(x+64,y) or place_meeting(x+64,y,obj_bush))//check if there is a spot for the boulder to be pushed into
		{
			if !position_meeting(x+64,y,obj_boulder) and !position_meeting(x+64,y,obj_snakehead) //check if there is a boulder or flamingo on the bush
			{
				if position_meeting(x+64,y,obj_bush)   //there is a bush, check if the bush is fully grown or not
				{
					var object_bush = instance_position(x+64,y,obj_bush)
					if object_bush.image_index != 2
					{
						boulder_moving = true
						xx = 1
						yy = 0;
						alarm[0] = 1
					}
				}
				else
				{
					boulder_moving = true
					xx = 1
					yy = 0;
					alarm[0] = 1
				}
			}
		}
		//bush boulder to the left
		if global.facing_direction == directions.left and place_meeting(x+32,y,obj_player) and (place_free(x-64,y) or place_meeting(x-64,y,obj_bush))
		{
			if !position_meeting(x-64,y,obj_boulder) and !position_meeting(x-64,y,obj_snakehead)
			{
				if place_meeting(x-64,y,obj_bush)
				{
					var object_bush = instance_position(x-64,y,obj_bush)
					if object_bush.image_index != 2
					{
						boulder_moving = true
						xx = -1
						yy = 0;
						alarm[0] = 1
					}
				}
				else
				{
					boulder_moving = true
					xx = -1
					yy = 0;
					alarm[0] = 1
				}
			}
			
		}
		//push boulder down
		if global.facing_direction == directions.down and place_meeting(x,y-32,obj_player) and (place_free(x,y+64) or place_meeting(x,y+64,obj_bush))
		{
			if !position_meeting(x,y+64,obj_boulder) and !position_meeting(x,y+64,obj_snakehead)
			{
				if place_meeting(x,y+64,obj_bush){
					var object_bush = instance_position(x,y+64,obj_bush)
					if object_bush.image_index != 2
					{
						boulder_moving = true
						xx = 0
						yy = 1;
						alarm[0] = 1
					}
				}
				else
				{
					boulder_moving = true
					xx = 0
					yy = 1;
					alarm[0] = 1
				}
			}
			
		}
		//push boulder up
		if global.facing_direction == directions.up and place_meeting(x,y+32,obj_player) and (place_free(x,y-64) or place_meeting(x,y-64,obj_bush))
		{
			if !position_meeting(x,y-64,obj_boulder) and !position_meeting(x,y-64,obj_snakehead)
			{
				if place_meeting(x,y-64,obj_bush){
					var object_bush = instance_position(x,y-64,obj_bush)
					if object_bush.image_index != 2
					{
						boulder_moving = true
						xx = 0
						yy = -1;
						alarm[0] = 1
					}
				}
				else
				{
					boulder_moving = true
					xx = 0
					yy = -1;
					alarm[0] = 1
				}
			}
			
		}

	}
}
