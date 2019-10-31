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

//rm_landing
	//1
	ini_write_real("rm_landing","x1",2789);
	ini_write_real("rm_landing","y1",600);


//rm_tutorial
	//1
	ini_write_real("rm_tutorial","x1",261);
	ini_write_real("rm_tutorial","y1",383);

	//2
	ini_write_real("rm_tutorial","x2",2844);
	ini_write_real("rm_tutorial","y2",698);

//rm_forest_1
	ini_write_real("rm_forest_1","x1",300);
	ini_write_real("rm_forest_1","y1",640);
	
//rm_forest_2
	//2a
	ini_write_real("rm_forest_2a","x1",352);
	ini_write_real("rm_forest_2a","y1",1024);
	//2b
//rm_forest_3
	ini_write_real("rm_forest_3","x1",2304);//First Entered Bottom Right
	ini_write_real("rm_forest_3","y1", 1056);
//rm_flamingle_1
	ini_write_real("rm_flamingle_1","x1",300);
	ini_write_real("rm_flamingle_1","y1",300);




ini_close();
