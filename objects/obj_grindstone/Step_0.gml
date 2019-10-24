if global.facing_direction == directions.right and place_meeting(x-32,y,obj_player)
{
	global.no_cut = reset_no
}
if global.facing_direction == directions.left and place_meeting(x+32,y,obj_player)
{
	global.no_cut = reset_no
}
if global.facing_direction == directions.up and place_meeting(x,y+32,obj_player)
{
	global.no_cut = reset_no
}
if global.facing_direction == directions.down and place_meeting(x,y-32,obj_player)
{
	global.no_cut = reset_no
}