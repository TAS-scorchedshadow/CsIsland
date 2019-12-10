/// @description Insert description here
// You can write your code in this editor
if init == true
{
	ini_open("settings.ini")
	//check if this is the first time the orb has been created
	if ds_grid_get(global.artifact_grid,artifact_number,0) == 0 //this is done through checking whether the x-value of the artifact in the grid equals to 0, if so then this is the first time the artifact is created
	{
		//set x and y variables
		ds_grid_add(global.artifact_grid,artifact_number,0,x)
		ds_grid_add(global.artifact_grid,artifact_number,1,y)
	}



	//collect data on whether this orb has been collected
	collected = ini_read_real("artifact" + string(artifact_number),"collected",0)
	if collected == 1 //if collected destroy itself
	{
		obj_player.artifact++
		instance_destroy()
	}
	//write information into settings.ini
	ini_write_real("artifact" + string(artifact_number),"x",x)
	ini_write_real("artifact" + string(artifact_number),"y",y)
	init = false
	ini_close()
}



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
		ini_open("settings.ini")
		ini_write_real("artifact" + string(artifact_number), "collected", 1)
		ini_close()
		ds_grid_add(global.artifact_grid,artifact_number,2,1)
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