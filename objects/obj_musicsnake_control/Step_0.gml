/// @description 
if mode == "init_2"
{
	for (i = 0; i <= 10; i += 1)
	{
		if ds_grid_get(music,i,0) == "lost_woods_section_1"
			{
				beat_map = ds_list_create();
				tempo = 120/240; //Tempo is in beats per second
				ds_list_add(beat_map,1,0.5,0.5,1,0.5,0.5,1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5)
				note_no = 0
				mode = "start";
				alarm_start = true
				alarm[1] = tempo * ds_list_find_value(beat_map,0) * room_speed
			}
	}
}
if mode == "start"
{
	if note_no >= ds_list_size(beat_map)
	{
		alarm_start = false
		mode = ""
		ds_list_destroy(beat_map)
	}
	if alarm_start == true
	{
		alarm[0] = tempo * ds_list_find_value(beat_map,note_no) * room_speed
		note_no += 1
		alarm_start = false
	}
}