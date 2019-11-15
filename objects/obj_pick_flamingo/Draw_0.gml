/// @description
if mode = "pick"
{
	draw_sprite(freeze_sprite,0,obj_player.x,obj_player.y)
	draw_self()
}
if mode = "lift" || mode = "place"
{
	draw_sprite(freeze_sprite,0,x,y+32)
	draw_self()
}
if mode = "return"
{
	draw_self()
}