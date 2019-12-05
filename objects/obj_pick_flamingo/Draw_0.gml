/// @description
if mode = "pick"
{
	draw_sprite(freeze_sprite,0,obj_player.x,obj_player.y)
	draw_sprite(spr_flamingo_beak,0,sprite_x,sprite_y)
}
if mode = "lift" || mode = "place"
{
	draw_sprite(freeze_sprite,0,sprite_x,sprite_y+32)
	draw_sprite(spr_flamingo_beak,0,sprite_x,sprite_y)
}
if mode = "return"
{
	draw_sprite(spr_flamingo_beak,0,sprite_x,sprite_y)
}