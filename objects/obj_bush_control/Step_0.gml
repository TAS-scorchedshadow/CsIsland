/// @description Insert description here
// You can write your code in this editor
if global.bush_cut == true
{
	with (obj_bush)
	{
		if image_index == 1
		{
			if !place_meeting(x,y,obj_player)
			{
			image_index ++
			instance_create_layer(x,y,"Instances",obj_bush_wall)
			}
		}
		if image_index == 0
		{
			image_index ++
		}
		if image_index == 3
		{
			image_index = 0
		}
	global.bush_cut = false
	}
}