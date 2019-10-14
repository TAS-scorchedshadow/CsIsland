display_set_gui_size(1920,1080)
global.selectedbutton = 0;
fnt_cursive = font_add("gradecursive-2-italic.ttf", 80, false, false, 32, 128);
ini_open("settings.ini")
cutscene = ini_read_real("Start","Cutscene",0);


if cutscene == 0
{
	ini_write_real("Start","Cutscene",0);
	room_goto(rm_start);
	
}
ini_close();