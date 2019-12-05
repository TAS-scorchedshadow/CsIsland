/// @description
if instance_number(obj_pick_flamingo) > 1
{
	instance_destroy()
}
obj_player.shadow = false
freeze_sprite = spr_player_standL
mode = "pick"
sprite_x = obj_player.x
sprite_y = obj_player.y - 300
x = obj_player.x
y = obj_player.y
obj_player.visible = false
obj_player.hascontrol = false
if global.facing_direction = directions.up{
	freeze_sprite = spr_player_standU
}
if global.facing_direction = directions.left{
	freeze_sprite = spr_player_standL
}
if global.facing_direction = directions.down{
	freeze_sprite = spr_player_standD
}
if global.facing_direction = directions.right{
	freeze_sprite = spr_player_standR
}