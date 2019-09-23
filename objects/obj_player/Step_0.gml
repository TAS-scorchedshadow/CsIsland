/// @description Movement
//Left/Right Movement
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));				
var up = keyboard_check(ord("W"));	
var down = keyboard_check(ord("S"));	
HMove += (right-left) * ASpeed;
VMove += (down-up) * ASpeed;
VMove = clamp(VMove,-max_speed,max_speed);
HMove = clamp(HMove,-max_speed,max_speed);

if (place_meeting(x,y+(VMove),obj_solid))
{
	y -= VMove
}

if (place_meeting(x+HMove,y,obj_solid))
{
	while (!place_meeting(x+sign(HMove),y,obj_solid))
	{
      x += sign(HMove);
	}
	HMove = 0;
}

if VMove != 0 and (down-up) = 0
	{
		VMove -= (DSpeed * sign(VMove)); //Deceleration
	}

if HMove != 0 and (right-left) = 0
	{
		HMove -= (DSpeed * sign(HMove)); //Deceleration
	}

x += HMove;
y += VMove;

if (down-up) == -1
{
	global.facing_direction = directions.up
}
if (down-up) == 1
{
	global.facing_direction = directions.down
}
if (right-left) == 1
{
	global.facing_direction = directions.right
}
if (right-left) == -1
{
	global.facing_direction = directions.left
}




if VMove == 0 and HMove == 0
{
	image_speed = 1
	if global.facing_direction == directions.right{
		sprite_index = spr_player_standR
	}
	else
	{
		sprite_index = spr_player_standL
	}
}
else
{
	image_speed = 2
	if global.facing_direction == directions.right{
		sprite_index = spr_player_walkR
	}
	else
	{
		sprite_index = spr_player_walkL
	}
}
