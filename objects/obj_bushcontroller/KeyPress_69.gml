/// @description Cut Bush
var bush_cut = false
if global.selecteditem = 2 

{	
	switch (global.facing_direction)
	{
		case directions.right:
			with (obj_bush)
				{
					if place_meeting(x-10,y+10,obj_player)//If the player is left of the busg/Bush if right of the player
					{
						instance_destroy();
						bush_cut = true;
					}
				}
		case directions.left:
			with (obj_bush)
				{
					if place_meeting(x+10,y+10,obj_player)//If the player is right of the busg/Bush if left of the player
					{
						instance_destroy();
						bush_cut = true;
					}
				}
		case directions.down:
			with(obj_bush)
			{
				if place_meeting(x,y-10,obj_player)
				{
					instance_destroy();
					bush_cut = true;
					
				}
			}
	}
}
if bush_cut = true 
{
	phase ++
}

	

