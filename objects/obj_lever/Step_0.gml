//check if the lever is pulled
if active == true //if lever is pulled destroy the door
{
	if instance_exists(assigned_door)
	{
		with (assigned_door)
		{
			instance_destroy()
		}
		image_index = 1
		pressed = true
	}
}
else //if the lever isn't pulled/off and the door was destroyed, create a new door
{
	if !position_meeting(assigned_x,assigned_y,obj_tree_door)
	{
		assigned_door = instance_create_layer(assigned_x,assigned_y,"Instances",obj_tree_door)
	}
	image_index = 0
	pressed = false
}

//the following code creates a [E] that fades in and out when you walk near the obj
if distance_to_object(obj_player) < 64
{
	if mode = ""
	{
		draw = true
		mode = "fade-in"
	}
	if keyboard_check_pressed(ord("E")) and global.selecteditem == 0 //if the player presses [E], flip the lever
	{
		if image_index == 0
		{
			image_index = 1
		}
		active = true
	}
}
else if mode = "fade-in"
{
	mode = "fade-out"
}

if mode = "fade-in"
{
	if alpha < 1
	{
		alpha += 0.05
	}
}
if mode = "fade-out"
{
	if alpha > 0
	{
		alpha -= 0.1
	}
	else
	{
		draw = false
		mode = ""
	}
}