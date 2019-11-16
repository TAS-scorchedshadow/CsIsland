/// @description Set checkpoint values & Change Objective Text
if change_objective = true
{
	global.objective = text;

}
if change_checkpoint = true
{
	ini_open("settings.ini")
	ini_write_real("checkpoint","x",x)
	ini_write_real("checkpoint","y",y)
	global.checkpoint_x = x
	global.checkpoint_y = y
}
