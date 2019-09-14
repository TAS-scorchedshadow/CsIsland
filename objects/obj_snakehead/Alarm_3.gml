/// @description Determine the direction that the will travel when E is pressed 
if ds_list_find_index(avaliabledir,0) >= 0 
{
	if highlighteddirection = 0
	{
		xx = 0;
		yy = -1;
	}
}

if ds_list_find_index(avaliabledir,90) >= 0 
{
	if highlighteddirection = 90
	{
		
		xx = 1
		yy = 0;
	}

}

if ds_list_find_index(avaliabledir,180) >= 0 
{
	if highlighteddirection = 180
	{
		
		xx = 0
		yy = 1
	}
}

if ds_list_find_index(avaliabledir,270) >= 0 
{
	if highlighteddirection = 270
	{
		xx = -1
		yy = 0
	}

}
