if single = false
{
	x+=3
	if place_meeting(x,y,obj_solid)
	{
		instance_create_layer(x + 200,y,"Instances",obj_player)
		obj_camera.follow = obj_player;
		single = true;
		image_index = 1;
	}
}