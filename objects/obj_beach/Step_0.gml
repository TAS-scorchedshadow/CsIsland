/// @description Manage Opacity
var i = 0
repeat (ds_grid_height(ds_text)){
	var opacity = ds_grid_get(ds_text,i,1);
	var state = ds_grid_get(ds_text,i,2);
	if state == fade.in
	{
	opacity += 0.005;
	}
	if state == fade.stop
	{
	opacity -= 0.005;
	}
	opacity = clamp(opacity,0,1);
	ds_grid_set(ds_text,i,1,opacity)
	i++
}
if instance_exists(obj_boat){
	if obj_boat.x + 2500 >= room_width 
	{
		var i = 0
		repeat (ds_grid_height(ds_text)){
		ds_grid_set(ds_text,i,2,fade.stop);
		i++
		}
	}

}