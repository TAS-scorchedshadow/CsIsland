ini_open("settings.ini")
ini_write_real("Start","Cutscene",1);
room_goto(rm_tutorial)
ini_close();
