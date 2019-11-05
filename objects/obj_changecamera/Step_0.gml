if obj_camera.zoom >= limit 
{
	zooming_out = false;
	obj_camera.follow = obj_charlotte
	obj_camera.xoffset = 0;
	obj_camera.yoffset = 800;
	instance_destroy(self);
}
if zooming_out == true
{
	obj_camera.zoom += 0.005
}