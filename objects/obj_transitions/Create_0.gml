/// @description Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
	NULL,
}
mode = TRANS_MODE.INTRO;
percent = 1; //Percentage of the screen is black
target = room; //Target Room
opacity = 0
lvl_name = ""