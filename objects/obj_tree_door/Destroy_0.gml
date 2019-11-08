if position_meeting(x,y,obj_bush_wall)
{
	with (instance_nearest(x,y,obj_bush_wall))
	{
		instance_destroy()
	}
}