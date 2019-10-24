/// @description
if global.selecteditem == 1
{
	if keyboard_check_pressed(ord("E"))
	{
		obj_player.hascontrol = false
		instance_create_layer(x,y,"Instances",obj_pick_flamingo)
	}
}