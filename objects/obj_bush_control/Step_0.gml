/// @description Changing bush index when a bush is cut
if global.bush_cut == true
{
	with (obj_bush)
	{	
		var boulder_block = false
		if instance_exists(obj_boulder)
		{
			var object_boulder = instance_nearest(x,y,obj_boulder)
			if object_boulder.x == x and object_boulder.y == y{   //Check if there is a boulder, if there is a boulder on the bush, don't grow
				var boulder_block = true
			}
		}
		if boulder_block = false
		{
			if image_index == 1
			{
				if !place_meeting(x,y,obj_player)
				{
				image_index ++
				instance_create_layer(x,y,"Instances",obj_bush_wall) //When growing into full grown bush, create a wall obj on the bush
				}
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
if global.no_cut <= 0
{
	obj_gui.objective = "Your blade needs sharpening"
}
