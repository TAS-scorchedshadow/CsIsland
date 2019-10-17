/// @description
if place_meeting(x,y,obj_player) and mode = ""
{
	draw = true
	mode = "fade-in"
}
if !place_meeting(x,y,obj_player) and mode = "fade-in"
{
	mode = "fade-out"
}
