/// @description 
if mode == "init_2"
{
	global.music_score = ""
	for (i = 0; i <= 10; i += 1)
	{
		if ds_grid_get(music,i,0) == "lost_woods_section_1"
			{
				beat_map = ds_list_create();
				tempo = 120/240; //Tempo is in beats per second
				ds_list_add(beat_map,1,0.5,0.5,1,0.5,0.5,1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5)
				note_no = 0
				mode = "start";
				alarm[2] = 60
				alarm[1] = 405
			}
	}
}
if mode == "start"
{
	if alarm_start == true
	{

		if note_no >= ds_list_size(beat_map)
		{
			alarm_start = false
			ds_list_destroy(beat_map)
		}
		else
		{
			alarm[0] = tempo * ds_list_find_value(beat_map,note_no) * room_speed
			note_no += 1
			alarm_start = false
		}
	}
	if song_playing == true
	{
		if !audio_is_playing(msc_lost_woods)
		{
			with (obj_music_note_check)
			{
				instance_destroy()
			}
			song_playing = false
			mode = ""
		}
	}
}