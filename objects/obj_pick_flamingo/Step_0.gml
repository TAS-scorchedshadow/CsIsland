if mode = "pick"
{	
	if abs(obj_player.y - y) > 32
	{
		y += 5;
	}
	else
	{
		mode = "lift";
	}
}
if mode = "lift"
{
	if y > obj_camera.y-768
	{
		y -= 5
	}
	else
	{
		x = global.checkpoint_x
		mode = "place"
		obj_player.x = global.checkpoint_x
		obj_player.y = global.checkpoint_y
	}
}

if mode = "place"
{
	if y < global.checkpoint_y
	{
		y += 5
	}
	else
	{
		obj_player.visible = true;
		obj_player.hascontrol = true
		obj_player.shadow = true
		mode = "return"
		global.bush_reset = true
		if global.selecteditem == 1
		{
			global.selecteditem = 2
		}
	}
}
if mode = "return"
{
	if y > obj_camera.y-768
	{
		y -= 5
	}
}