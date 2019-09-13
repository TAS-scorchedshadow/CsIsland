/// @description Cut Bush
if global.selecteditem = 2 
{
	switch (phase)
	{
		case 2:
			xdif = abs(x - obj_player.x);
			ydif = abs(y - obj_player.y)
			if (xdif < 64 or ydif < 64) 
				phase = 0
				with (obj_bush) {if (x - obj_player.x or y - obj_player.y < 64) {instance_destroy(self)}
				}
			}
			}
	
	

