/// @description Movement
//Left/Right Movement
if(hascontrol) {
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));				
var up = keyboard_check(ord("W"));	
var down = keyboard_check(ord("S"));
}
else
{
	var left = 0
	var right = 0			
	var up = 0
	var down = 0
}
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
	ticks_moved = 0;
	audio_sound_gain(sfx_grassfoot,0,200);
	switch(global.facing_direction)
	{
		case directions.right:
			sprite_index = spr_player_standR;
			break;
		case directions.left:
			sprite_index = spr_player_standL;
			break;
		case directions.down:
			sprite_index = spr_player_standD;
			break;
		case directions.up:
			sprite_index = spr_player_standU;
			break;
	}
}
else
{
	image_speed = 3
	ticks_moved ++
	if (audio_is_playing(sfx_footstep_grass) == false) 
	{
		audio_play_sound(sfx_footstep_grass,0,false)
	};
	switch(global.facing_direction)
	{
	case directions.right:
		sprite_index = spr_player_walkR;
		break;
	case directions.left:
		sprite_index = spr_player_walkL;
		break;
	case directions.down:
		sprite_index = spr_player_walkD;
		break;
	case directions.up:
		sprite_index = spr_player_walkU;
		break;
		
	}

}


