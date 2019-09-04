/// @description 
var left = keyboard_check(ord("D"));
var right = keyboard_check(ord("A"));
acceleration = 1					//pixels*tick^-2
decleration = 0.1					//pixels*tick^-2
horizontal = right - left;
if horizontal == -1{
	if hspeed <=5{
		hspeed += 1
	}
}
if horizontal == 1{
	if hspeed >=-5{
		hspeed -= 1
	}
}
if horizontal == 0{
	if hspeed > 0{
		hspeed -= .1
	}
	if hspeed < 0{
		hspeed += .1
	}
}