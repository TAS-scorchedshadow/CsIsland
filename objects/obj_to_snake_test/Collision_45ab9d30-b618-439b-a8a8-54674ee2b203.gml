/// @description Move to next room

with (obj_player)
{
	if(hascontrol)
	{
		hascontrol = false;
		Slide_Transition(TRANS_MODE.GOTO,rm_snake_test,"Music snake test");
	}

}