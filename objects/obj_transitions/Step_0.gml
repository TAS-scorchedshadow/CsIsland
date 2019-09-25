/// @description Progress the transition

if (mode != TRANS_MODE.OFF && mode != TRANS_MODE.NULL) 
{
	var length = 1
	if (mode == TRANS_MODE.INTRO) //If in new room
	{
		percent = max(0, percent - max((percent/10),0.005)); //Finding maximum value of...
	
	}
	else
	{
		percent = min(length,percent + max(((length-percent)/10),0.005)); //Finding minimum value of...
	}
	
	if (percent == length) || (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;	
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.NULL;
				alarm[0] = room_speed
				break;	
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.NULL;
				alarm[1] = room_speed
				break;
			}
			case TRANS_MODE.RESTART:
			{
				mode = TRANS_MODE.NULL;
				alarm[2] = room_speed
				break;	
			}
		}
	
	}

}