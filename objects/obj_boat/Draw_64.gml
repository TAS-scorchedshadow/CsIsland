if room = rm_landing && image_index = 0
{
	var w = display_get_gui_width();
	var h = display_get_gui_height();
	draw_set_color(c_black);
	draw_rectangle(0,0,w,100,false);
	draw_rectangle(0,h,w,h-100,false);
}

if single = false
{
	if (place_meeting(x+400,y,obj_swanthing) && stopped = 0)
	{
		if image_index != 2{
		window_set_cursor(cr_hourglass)
		room_speed = 1/4 *room_speed;	
		alarm[1] = 8 * room_speed;
		audio_play_sound(sfx_error,2,false);
		}
		draw_set_alpha(0.4)
		draw_set_color(c_white)
		draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false)
		draw_set_alpha(1);
		draw_sprite(spr_error_message,0,100,100)
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
		ini_open("settings.ini");
		ini_write_real("Start","Cutscene",1);
		ini_close();
		single = true;
		image_index = 1;
	}
}
