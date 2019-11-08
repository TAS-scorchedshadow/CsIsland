/// @description Play song if player is standing on mat
//make sure the player is holding the flute
if global.selecteditem == 1 and keyboard_check_pressed(ord("E"))
{
	if obj_music_control.mode == ""
	{
		rythm_start("pre-init","lost_woods_section_1")
	}
}
	
	