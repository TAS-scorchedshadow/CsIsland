/// @description Insert description here
// You can write your code in this editor
if distance_to_object(obj_player) < 64
{
	if mode = ""
	{
		draw = true
		mode = "fade-in"
	}
	if keyboard_check_pressed(vk_space) and global.selecteditem == 0 //if the player presses [SPACE], flip the lever
	{
		obj_player.artifact += 1
		instance_destroy()
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