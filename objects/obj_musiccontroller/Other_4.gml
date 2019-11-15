if room == rm_start 
{

	ini_open("settings.ini")
	ini_write_real("Audio", "Current Song",0);
	ini_write_real("Audio", "Music Group", 1);
	ini_close();


	obj_musiccontroller.alarm[0] = 1;
}