if (room != rm_menu && room !=rm_title) {
	ini_open("settings.ini");
	var cutscene = ini_read_real("Start","Cutscene",1);

	if (cutscene == 0 && room != rm_start)
	{
		instance_create_layer(128,736,"Instances",obj_boat);
		obj_camera.follow = obj_boat;
	}
	else
	{
	var rmname = room_get_name(room);

	var xto = "x"+string(entrance_number)
	var yto = "y"+string(entrance_number)
	var new_x = ini_read_real(rmname,xto,300);
	var new_y = ini_read_real(rmname,yto,300);
	instance_create_layer(new_x,new_y,"Instances",obj_player);


	obj_camera.follow = obj_player;

	}
}