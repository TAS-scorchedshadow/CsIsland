ini_open("settings.ini");
ini_write_real("player","xvalue",x);
ini_write_real("player","yvalue",y);
ini_write_string("player","last_gameroom",room)
ini_close();
room_goto(rm_menu)
