/// @description Move Cmaera and Manange Zoom
if (room != rm_title and room != rm_menu  and room != rm_play_again and follow != noone) {
	xoffset = zoom * 200;
	xTo = follow.x + xoffset;
	yTo = follow.y + yoffset;
	
	//Finds Distance to Edge from the origin which is xTo/yTo
	var up_edge = yTo - camera_height/2 
	var right_edge = xTo + camera_width/2 
	var down_edge = yTo + camera_height/2 
	var left_edge = xTo - camera_width/2 
	
	//Tolerance of Camera
	if(left_edge  + 100> 0 and right_edge < room_width + 100) x += (xTo -x)/35;
	if(up_edge + 100 > 0 and down_edge < room_height + 100) y+= (yTo - y)/35;


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_width = zoom* 960;
camera_height = zoom* 540;
var pm = matrix_build_projection_ortho(camera_width,camera_height,1,100000)
camera_set_proj_mat(camera,pm);
camera_set_view_mat(camera,vm);
}