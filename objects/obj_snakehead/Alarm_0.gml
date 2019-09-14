///@description Moving the Snake
//Loops the length of the snake head 
if i < move
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
	moving = false
}
