if single = false
{
	if (place_meeting(x+400,y,obj_swanthing) && stopped = 0)
	{
		if !audio_is_playing(sfx_error)
		{
			audio_play_sound(sfx_error,0,0)
		}
		if image_index != 2{
		alarm[1] = 3 * room_speed;
		}
		image_index = 2;
	}
	else{
		image_index = 0
		x+=3
	}

	if place_meeting(x,y,obj_wall)
	{
		instance_create_layer(x + 200,y,"Instances",obj_player)
		obj_camera.follow = obj_player;
		single = true;
		image_index = 1;
	}
}