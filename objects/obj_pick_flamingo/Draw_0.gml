/// @description
if mode = "pick"
{	
	if abs(obj_player.y - y) > 32{
		
	draw_sprite(freeze_sprite,0,obj_player.x,obj_player.y)
	draw_self()
	y += 5
	}
	else
	{
		mode = "lift"
	}
}
if mode = "lift"
{
	if y > -32{
	draw_sprite(freeze_sprite,0,x,y+32)
	draw_self()
	y -= 5
	}
	else
	{
		x = 477
		mode = "place"
		obj_player.x = 477
		obj_player.y = 540
	}
}

if mode = "place"
{
	if y < 540
	{
		draw_sprite(freeze_sprite,0,x,y+32)
		draw_self()
		y += 5
	}
	else
	{
		obj_player.visible = true
		obj_player.hascontrol = true
		obj_player.shadow = true
		mode = "return"
	}
}
if mode = "return"
{
	if y > -32
	{
		draw_self()
		y -= 5
	}
}