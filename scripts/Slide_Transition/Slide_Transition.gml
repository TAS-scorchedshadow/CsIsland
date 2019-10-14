///@desc SlideTransition(mode,targetroom,level_description)
///@arg Mode sets transition mode between next, restart and goto.
///@arg Target sets target room when using the goto mode

with (obj_transitions)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
	if (argument_count > 2) lvl_name = argument[2];
	if (argument_count > 2) lvl_desc = argument[3];
}