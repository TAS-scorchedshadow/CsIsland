/// @description
if mode == "falling"
{
	if y < (obj_player.y - 64)
	{
		y += 4
	}
	else
	{
		mode = "speaking"
		draw_mode = "speaking"
	}
}

if mode == "speaking"
{
	box_message = "When you stand on a blue mat, you can play a song! (Press [E] so I can keep talking)"
	if (keyboard_check_pressed(ord("E"))) mode = "speaking2"
}
if mode == "speaking2"
{
	box_message = "To play a song, switch to your flute by pressing [Q]"
	if (global.selecteditem == 1) mode = "speaking3"
}
if mode == "speaking3"
{
	box_message = "Once you start playing a song, a faded note would appear! (Press [E] so I can keep talking)"
    if (keyboard_check_pressed(ord("E")))
	{
		mode = "speaking4"
		draw_mode = "demonstrate"
		faded_note_x = x - 200
		faded_note_y = y - 120
		dark_note_x = x + 600
		dark_note_y = y - 120
	}
}
if mode == "speaking4"
{
	box_message = "When a black note reaches the faded note you press [E]! (Press [E] so I can keep talking)"
	if (keyboard_check_pressed(ord("E")))
	{
		mode = "speaking5"
	}
}
if mode == "speaking5"
{
	box_message = "Now start to play a song by pressing [E]!"
	if (keyboard_check_pressed(ord("E")))
	{
		draw_mode = ""
		mode = ""
		rythm_start("pre-init","lost_woods_full")
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




