/// @description Insert description here
// You can write your code in this editor

if (follow != noone)
{
	xTo = follow.x + xoffset;
	yTo = follow.y + yoffset;
}

if(xTo > 0 and xTo < room_width) x += (xTo -x)/35
if(yTo > 0 and yTo < room_height) y+= (yTo - y)/35

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera,vm);