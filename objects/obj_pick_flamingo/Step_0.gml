if mode = "pick"
{	
	if abs(obj_player.y - sprite_y) > 32
	{
		sprite_y += 5;
	}
	else
	{
		mode = "lift";
	}
}
if mode = "lift"
{
	if sprite_y > obj_camera.y-768
	{
		sprite_y -= 5
	}
	else
	{
		sprite_x = global.checkpoint_x
		mode = "place"
		obj_player.x = global.checkpoint_x
		obj_player.y = global.checkpoint_y
	}
}

if mode = "place"
{
	if sprite_y < global.checkpoint_y
	{
		sprite_y += 5
	}
	else
	{
		obj_player.visible = true;
		obj_player.hascontrol = true
		obj_player.shadow = true
		mode = "return"
		global.bush_reset = true
		if global.selecteditem == 2
		{
			global.selecteditem = 0
		}
	}
}
if mode = "return"
{
	if sprite_y > obj_camera.y-768
	{
		sprite_y -= 5
	}
	else
	{
		instance_destroy();
	}
}