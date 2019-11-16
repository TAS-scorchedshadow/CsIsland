/// @description
if mode == "falling"
{
	if y < (obj_player.y - 64)
	{
		image_speed = 1
		y += 4
	}
	else
	{
		mode = "speaking"
		draw_mode = "speaking"
		image_speed = 0
		image_index = 0
	}
}

if mode == "lift"
{
	if y > (obj_player.y - 400)
	{
		image_speed = 1
		y -= 4
	}
	else
	{
		with instance_nearest(768,1792,obj_music_mat)
		{
			instance_destroy()
		}
		obj_player.hascontrol = true
		instance_destroy();
	}
}

if mode == "speaking"
{
	if message_no == 0
	{
		box_message = "When you stand on a blue mat, you can play a song! (Press [E] so I can keep talking)"
	}
	if message_no >= 1
	{
		box_message = "To play a song, switch to your flute by pressing [Q]"
		if (global.selecteditem == 1)
		{
			mode = "speaking2"
			message_no = 0
		}
	}
}
if mode == "speaking2"
{
	if message_no == 0
	{
		box_message = "Once you start playing a song, a faded note and many black notes would appear! (Press [E] so I can keep talking)"
		draw_mode = "demonstrate"
		var h = display_get_gui_height()
		var w = display_get_gui_width()
		faded_note_x = 200
		faded_note_y = h - 120
		dark_note_x = w - 100
		dark_note_y = h - 120
	}
	if message_no == 1
	{
		box_message = "When a black note reaches the faded note you press [E]! (Press [E] so I can keep talking)"
	}
	if message_no == 2
	{
		box_message = "Now start a song by pressing [E]!"
	}
	if message_no >= 3
	{
		draw_mode = ""
		mode = "wait"
		rythm_start("pre-init","lost_woods_section_1")
	}
}


if draw_mode == "demonstrate"
{
	if dark_note_x > x - 200
	{
		dark_note_x -= 4
	}
	else
	{
		dark_note_x = x + 600
	}
}


if (keyboard_check_pressed(ord("E"))) message_no ++

if obj_player.hascontrol = true and mode == "wait"//after the rythmn game, the player would automatically be given control, so remove the control and continue with the tutorial
{
	obj_player.hascontrol = false
	mode = "speaking3"
	draw_mode = "speaking"
	message_no = 0
}
if mode == "speaking3"
{
	if message_no == 0
	{
		box_message = "Looks like you've got the hang of it. I will leave now. Ciao! (Press [E] so I can leave)"
	}
	if message_no >= 1
	{
		mode = "lift"
	}
}

