/// @description Move to next room
obj_player.entrance_number = entrance_number
with (obj_player)
{
	if(hascontrol)
	{
		hascontrol = false;
		global.objective = "";
		obj_gui.from_menu = false;
		obj_gui.entrance_number = entrance_number;
		Slide_Transition(TRANS_MODE.GOTO,other.target,other.lvl_desc);
	}

}