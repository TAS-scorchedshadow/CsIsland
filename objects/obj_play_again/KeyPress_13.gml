if global.selectedbutton == 0 
{
	room_goto(rm_title);
}
if global.selectedbutton == 1 
{
	file_delete("settings.ini")
	game_restart();
}