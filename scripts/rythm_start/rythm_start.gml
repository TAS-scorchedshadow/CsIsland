
with (obj_music_control)
{
	mode = argument[0];
	song = argument[1];
	if argument_count >= 3
	{
		assigned_mat = argument[2];
	}
	if argument_count >= 4
	{
		switch (argument_count)
		{
		case letter_rank.D: goal_rank = "D"
		case letter_rank.C: goal_rank = "C"
		case letter_rank.B: goal_rank = "B"
		case letter_rank.A: goal_rank = "A"
		case letter_rank.S: goal_rank = "S"
		}
	}
}