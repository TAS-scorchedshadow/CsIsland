ini_open("settings.ini");
ini_write_real("player","xvalue",x);
ini_write_real("player","yvalue",y);
ini_close();
room_goto(rm_menu)
