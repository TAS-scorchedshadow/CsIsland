///@description Moving the Snake

/*
if position_empty(x,y-64) ds_list_add(avaliabledir,0)
if position_empty(x+64,y) ds_list_add(avaliabledir,90)
if position_empty(x,y+64) ds_list_add(avaliabledir,180)
if position_empty(x-64,y) ds_list_add(avaliabledir,270)
*/
if i < 64
{
	i++
	obj_snakehead.x += xx
	obj_snakehead.y += yy
	alarm[0] = 1
}
else
{
	i = 0
	xx= 0
	yy = 0
	alarm[0] = 0
	alarm[1] = 1
}
