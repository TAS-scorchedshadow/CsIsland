if global.selectedbutton == 0 
{
	obj_gui.from_menu = true;
	ini_open("settings.ini")
	var goto = ini_read_real("player","last_gameroom",rm_landing);
	room_goto(goto);
}
if global.selectedbutton == 1 room_goto(rm_menu)
if global.selectedbutton == 2 game_end();