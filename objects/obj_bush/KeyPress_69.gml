/// @description Cut Bush
if global.selecteditem = 2 
{
	if phase = 2
	{
		xdif = abs(x - obj_player.x);
		ydif = abs(y - obj_player.y)
		if (xdif < 64 or ydif < 64) instance_destroy(self);
		instance_create_layer(x,y,"Instances",obj_growingbush0);
	}
}
