/// @description 
///@description Getting Avaliable Directions
ds_list_clear(avaliabledir)
if global.selecteditem = 0 and moving = false{
	if keyboard_check_pressed(ord("W"))
	{
		if position_meeting(x,y-move,obj_bush) and !position_meeting(x,y-move,obj_solid)
		{
			var object_bush = instance_position(x,y-move,obj_bush)
			if object_bush.image_index != 2
			{
				moving = true;
				i = 0
				xx = 0;
				yy = -1;
				alarm[0] = 1
			}
		}
		else if position_empty(x,y-move)
		{
			moving = true;
			i = 0
			xx = 0;
			yy = -1;
			alarm[0] = 1
		}
	}
	if keyboard_check_pressed(ord("D"))
	{
		if position_meeting(x+move,y,obj_bush) and !position_meeting(x+move,y,obj_solid)
		{
			var object_bush = instance_position(x+move,y,obj_bush)
			if object_bush.image_index != 2
			{
				moving = true;
				i = 0
				xx = 1;
				yy = 0;
				alarm[0] = 1
			}
		}
		else if position_empty(x+move,y)
		{
			moving = true;
			i = 0
			xx = 1;
			yy = 0;
			alarm[0] = 1
		}
	}
	if keyboard_check_pressed(ord("S"))
	{
		if position_meeting(x,y+move,obj_bush) and !position_meeting(x,y+move,obj_solid)
		{
			var object_bush = instance_position(x,y+move,obj_bush)
			if object_bush.image_index != 2
			{
				moving = true;
				i = 0
				xx = 0;
				yy = 1;
				alarm[0] = 1
			}
		}
		else if position_empty(x,y+move)
		{
			moving = true;
			i = 0
			xx = 0;
			yy = 1;
			alarm[0] = 1
		}
	}
	if keyboard_check_pressed(ord("A"))
	{
		if position_meeting(x-move,y,obj_bush) and !position_meeting(x-move,y,obj_solid)
		{
			var object_bush = instance_position(x-move,y,obj_bush)
			if object_bush.image_index != 2
			{
				moving = true;
				i = 0
				xx = -1;
				yy = 0;
				alarm[0] = 1
			}
		}
		else if position_empty(x-move,y)
		{
			moving = true;
			i = 0
			xx = -1;
			yy = 0;
			alarm[0] = 1
		}
	}
}

