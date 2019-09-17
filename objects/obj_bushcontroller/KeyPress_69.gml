/// @description Cut Bush

if global.selecteditem = 2 
{	
	switch (global.facing_direction)
	{
		case directions.right:
			with (obj_bush)
				{
					if place_meeting(x-10,y,obj_player)//If the player is left of the busg/Bush if right of the player
					{
						instance_destroy(self);
					}
				}
		case directions.left:
			with (obj_bush)
				{
					if place_meeting(x+10,y,obj_player)//If the player is right of the busg/Bush if left of the player
					{
						instance_destroy(self);
					}
				}
	}
}
	
	

