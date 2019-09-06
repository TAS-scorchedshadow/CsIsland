/// @description

//Left/Right Movement
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));				
var up = keyboard_check(ord("W"));	
var down = keyboard_check(ord("S"));	
HMove += (right-left) * ASpeed;
VMove += (down-up) * ASpeed;

if HMove != 0 and (right-left) = 0
	{
		HMove -= (DSpeed * sign(HMove)); //Deceleration
	}
HMove = clamp(HMove,-max_speed,max_speed);

if (place_meeting(x+HMove,y,obj_solid))
{
	while !(place_meeting(x+sign(HMove),y,obj_solid))
	{
		x += sign(HMove)
	}
	HMove = 0
}

if VMove != 0 and (down-up) = 0
	{
		VMove -= (DSpeed * sign(VMove)); //Deceleration
	}

if (place_meeting(x,y+VMove,obj_solid))
{
	while !(place_meeting(x,y+sign(VMove),obj_solid))
	{
		y += sign(VMove)
	}
	VMove = 0


}
VMove = clamp(VMove,-max_speed,max_speed);
x += HMove;
y += VMove;