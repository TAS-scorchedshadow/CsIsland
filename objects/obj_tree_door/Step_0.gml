/// @description
if assigned_button.button_pressed = true
{
	visible = false
	if position_meeting(x,y,obj_bush_wall)
	{
		with (instance_nearest(x,y,obj_bush_wall))
		{
			instance_destroy()
		}
	}
}
else
{
	visible = true
	if !position_meeting(x,y,obj_bush_wall)
	{
		instance_create_layer(x,y,"Instances",obj_bush_wall)
	}
}