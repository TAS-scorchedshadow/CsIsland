if distance_to_object(obj_player) < 64
{
	if mode = ""{
		draw = true
		mode = "fade-in"
	}
	if keyboard_check_pressed(ord("E"))
	{
		global.no_cut = reset_no
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
		alpha += 0.01
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