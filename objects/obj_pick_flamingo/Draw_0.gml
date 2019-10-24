/// @description
if mode = "pick"
{	
	if abs(obj_player.y - y) > 32{
		
	draw_sprite(spr_player_standR,0,obj_player.x,obj_player.y)
	draw_self()
	y += 5
	}
	else{
		mode = "lift"
	}
}
if mode = "lift"
{
	if y > -32{
	draw_sprite(spr_player_standR,0,x,y+32)
	draw_self()
	y -= 5
	}
}
	