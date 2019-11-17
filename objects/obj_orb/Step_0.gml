if distance_to_object(obj_player) < 64
{
	if mode = ""
	{
		draw = true
		mode = "fade-in"
	}
	if keyboard_check_pressed(ord("E")) and once = true
	{
		once = false
		obj_player.hascontrol = false;
		obj_gui.blackbars = true;
		obj_camera.follow = obj_focal_point2
		obj_camera.zoom = 0.3
		instance_destroy(obj_musiccontroller)
		audio_stop_all()
		audio_play_sound(msc_megalovania,0,false);
		alarm[0] = 4*room_speed;
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