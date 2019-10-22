display_set_gui_size(1920,1080)
global.selectedbutton = 0;
fnt_cursive = font_add("gradecursive-2-italic.ttf", 80, false, false, 32, 128);

//First Open Cutscene
ini_open("settings.ini")
cutscene = ini_read_real("Start","Cutscene",0);

if cutscene == 0
{
	room_goto(rm_start);
	
}
ini_close();

///Save Room Entrance
//Entrance labeling goes from left-to-right exits on towards y = 0 have priorities 
ini_open("settings.ini")

//rm_test
ini_write_real("rm_test","x1",3600);
ini_write_real("rm_test","y1",1000);

ini_write_real("rm_test","x2",1800);
ini_write_real("rm_test","y2",600);

//rm_flamingle
ini_write_real("rm_flamingle","x1",300);
ini_write_real("rm_flamingle","y1",300);

//rm_forest
ini_write_real("rm_forest","x1",260);
ini_write_real("rm_forest","y1",600);

ini_close();
