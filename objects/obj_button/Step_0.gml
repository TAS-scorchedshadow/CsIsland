/// @description
if place_meeting(x,y,obj_solid)
{
	with (assigned_door)
	{
		instance_destroy()
	}
	image_index = 0
	pressed = true
}
else
{
	if !position_meeting(assigned_x,assigned_y,obj_tree_door)
	{
		assigned_door = instance_create_layer(assigned_x,assigned_y,"Instances",obj_tree_door)
	}
	image_index = 1
	pressed = false
}
