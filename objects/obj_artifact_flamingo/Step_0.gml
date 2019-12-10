/// @description
if distance_to_object(obj_player) < 64
{
	if mode = ""
	{
		draw = true
		mode = "fade-in"
	}
	if keyboard_check_pressed(vk_space)
	{
		display_text = true
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
	else //reset drawing variables
	{
		draw = false
		display_text = false
		mode = ""
		box_message = "I love shiny balls! If you give me 2, I'll let you pass. (Press [SPACE] to give me balls)"
		message_no = 0
	}
}
if keyboard_check_pressed(vk_space) message_no++

if message_no >= 2 and leaving == 0
{
	if obj_player.artifact == 2 and message_no < 5
	{
		box_message = "Thank You!"
		leaving = 1
		alarm[0] = room_speed * 2
	}
	else
	{
		box_message = "You don't have enough balls!"
		message_no = 5
	}
}

if leaving == 2
{
	y -= 5
}