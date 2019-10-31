///@description Getting Avaliable Directions
ds_list_clear(avaliabledir)

if position_meeting(x,y-move,obj_bush) and !position_meeting(x,y-move,obj_solid)
{
	var object_bush = instance_position(x,y-move,obj_bush)
	if object_bush.image_index != 2
	{
		ds_list_add(avaliabledir,0)
	}
}
else if position_empty(x,y-move) ds_list_add(avaliabledir,0)

if position_meeting(x+move,y,obj_bush) and !position_meeting(x+move,y,obj_solid)
{
	var object_bush = instance_position(x+move,y,obj_bush)
	if object_bush.image_index != 2
	{
		ds_list_add(avaliabledir,90)
	}
}
else if position_empty(x+move,y) ds_list_add(avaliabledir,90)
if position_meeting(x,y+move,obj_bush) and !position_meeting(x,y+move,obj_solid)
{
	var object_bush = instance_position(x,y+move,obj_bush)
	if object_bush.image_index != 2
	{
		ds_list_add(avaliabledir,180)
	}
}
else if position_empty(x,y+move) ds_list_add(avaliabledir,180)
if position_meeting(x-move,y,obj_bush) and !position_meeting(x-move,y,obj_solid)
{
	var object_bush = instance_position(x-move,y,obj_bush)
	if object_bush.image_index != 2
	{
		ds_list_add(avaliabledir,270)
	}
}
else if position_empty(x-move,y) ds_list_add(avaliabledir,270)


