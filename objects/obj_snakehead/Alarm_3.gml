/// @description Determine the direction that the will travel when E is pressed 
if ds_list_find_index(avaliabledir,0) >= 0 
{
	if chosendirection = 0
	{
		xx = 0;
		yy = -1;
	}
}

if ds_list_find_index(avaliabledir,90) >= 0 
{
	if chosendirection = 1
	{
		
		xx = 1
		yy = 0;
	}

}

if ds_list_find_index(avaliabledir,180) >= 0 
{
	if chosendirection = 2
	{
		
		xx = 0
		yy = 1
	}
}

if ds_list_find_index(avaliabledir,270) >= 0 
{
	if chosendirection = 3
	{
		xx = -1
		yy = 0
	}

}
