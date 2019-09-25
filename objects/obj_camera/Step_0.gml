/// @description Insert description here
// You can write your code in this editor

if (follow != noone)
{
	xTo = follow.x + xoffset;
	yTo = follow.y + yoffset;
	
	//Finds Distance to Edge from the origin which is xTo/yTo
	var up_edge = yTo - camera_height/2 
	var right_edge = xTo + camera_width/2 
	var down_edge = yTo + camera_height/2 
	var left_edge = xTo - camera_width/2 
	
	if(left_edge > 0 and right_edge < room_width) x += (xTo -x)/35;
	if(up_edge > 0 and down_edge < room_height) y+= (yTo - y)/35;
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera,vm);