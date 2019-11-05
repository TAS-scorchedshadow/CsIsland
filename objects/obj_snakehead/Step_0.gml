/// @description 
///@description Getting Avaliable Directions
if global.selecteditem == 2 and moving = false{
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
			}
		}
		else if place_meeting(x,y-move,obj_button)
		{
			var object_button = instance_position(x,y-move,obj_button)
			if object_button.pressed == false
			{
				moving = true;
				i = 0
				xx = 0;
				yy = -1;
			}
		}
		else if position_empty(x,y-move)
		{
			moving = true;
			i = 0
			xx = 0;
			yy = -1;
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
			}
		}
		else if position_meeting(x+move,y,obj_button)
		{
			var object_button = instance_position(x+move,y,obj_button)
			if object_button.pressed == false
			{
				moving = true;
				i = 0
				xx = 1;
				yy = 0;
			}
		}
		else if position_empty(x+move,y)
		{
			moving = true;
			i = 0
			xx = 1;
			yy = 0;
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
			}
		}
		else if position_meeting(x,y+move,obj_button)
		{
			var object_button = instance_position(x,y+move,obj_button)
			if object_button.pressed == false
			{
				moving = true;
				i = 0
				xx = 0;
				yy = 1;
			}
		}
		else if position_empty(x,y+move)
		{
			moving = true;
			i = 0
			xx = 0;
			yy = 1;
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
			}
		}
		else if position_meeting(x-move,y,obj_button)
		{
			var object_button = instance_position(x-move,y,obj_button)
			if object_button.pressed == false
			{
				moving = true;
				i = 0
				xx = -1;
				yy = 0;
			}
		}
		else if position_empty(x-move,y)
		{
			moving = true;
			i = 0
			xx = -1;
			yy = 0;
		}
	}
}
if moving == true
{
	if i < 64
	{
		i++
		x += xx
		y += yy
	}
	else
	{
		i = 0
		xx= 0
		yy = 0
		moving = false
	}
}

