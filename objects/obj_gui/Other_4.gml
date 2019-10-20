ini_open("settings.ini");
if (room != rm_menu && room !=rm_title) {
	
		var cutscene = ini_read_real("Start","Cutscene",1);

		if (cutscene == 0 && room != rm_start)
		{
			instance_create_layer(128,736,"Instances",obj_boat);
			obj_camera.follow = obj_boat;
		}
		else
		{
			if from_menu == false
				{
					var rmname = room_get_name(room);

					var xto = "x"+string(entrance_number) //x1,x2 etc.
					var yto = "y"+string(entrance_number)
					var new_x = ini_read_real(rmname,xto,300);
					var new_y = ini_read_real(rmname,yto,300);
					instance_create_layer(new_x,new_y,"Instances",obj_player);
					
				}
				else
				{
					var create_x = ini_read_real("player","xvalue",300);
					var create_y = ini_read_real("player","yvalue",300)
					show_debug_message(create_x);
					show_debug_message(create_y);
					instance_create_layer(create_x,create_y,"Instances",obj_player);
					
				}
			obj_camera.follow = obj_player;
			obj_camera.x = obj_player.x;
			obj_camera.y = obj_player.y;
	
		}
}

ini_close();