/// @description
if place_meeting(x,y,obj_solid)
{
	with (assigned_door)
	{
		instance_destroy()
	}
}
else
{
	if !position_meeting(assigned_x,assigned_y,obj_tree_door)
	{
		instance_create_layer(assigned_x,assigned_y,"Instances",obj_tree_door)
	}
}