/// @description Insert description here
x += HMove;
y += VMove;
if VMove == 0 and HMove == 0
{
	image_speed = 1
	if facing_direction == directions.right{
		sprite_index = spr_player_standR
	}
	else
	{
		sprite_index = spr_player_standL
	}
}
else 
{
	image_speed = 3
	if facing_direction == directions.right{
		sprite_index = spr_player_walkR
	}
	else
	{
		sprite_index = spr_player_walkL
	}
}