/// @description Move to next room

with (obj_player)
{
	if(hascontrol)
	{
		hascontrol = false;
		obj_gui.objective = "";
		Slide_Transition(TRANS_MODE.GOTO,other.target,other.lvl_desc);
	}

}