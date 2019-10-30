/// @description Move to next room
obj_gui.entrance_number = entrance_number
with (obj_player)
{
	if(hascontrol)
	{
		hascontrol = false;
		global.objective = "";
		obj_gui.from_menu = false;
		Slide_Transition(TRANS_MODE.GOTO,other.target,other.lvl_desc);
	}

}