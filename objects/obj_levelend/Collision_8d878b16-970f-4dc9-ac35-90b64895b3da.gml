/// @description Move to next room

with (obj_player)
{
	if(hascontrol)
	{
		hascontrol = false;
		obj_gui.objective = "";
		obj_gui.from_menu = false;
		Slide_Transition(TRANS_MODE.GOTO,other.target,other.lvl_desc);
	}

}