/// @description 
if mode == "init_2"
{
	global.music_score = ""
	obj_musiccontroller.flute = true;
	obj_musiccontroller.alarm[0] = 1;
	if song == "lost_woods_section_1"
		{
			beat_map = ds_list_create();
			tempo = 1/2; //Tempo is in seconds per whole note
			ds_list_add(beat_map,1,0.5,0.5,1,0.5,0.5,1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5)
			note_no = 0
			mode = "start";
			play_music = msc_lost_woods
			alarm[2] = 60
			alarm[1] = 300
		}
	if song == "lost_woods_full"
		{
			beat_map = ds_list_create();
			tempo = 3/5; //Tempo is in seconds per whole note
			ds_list_add(beat_map,1,0.5,0.5,1,0.5,0.5,1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5,2.5,0.5,0.5,0.5,3,0.5,0.5,1,0.5,0.5,1,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,0.5,2.5,0.5,0.5,0.5,3,0.5,0.5,1,0.5,0.5,1,0.5,0.5,3,0.5,0.5,1,0.5,0.5,1,0.5,0.5,3,0.5,0.5,1,0.5,0.5,1,0.5,0.5,3,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.25,0.5,0.25,7)
			note_no = 0
			mode = "start";
			play_music = msc_lost_woods_full
			alarm[2] = 60  //delay before 1st note is created
			alarm[1] = 300 //delay before song starts
		}
}
if mode == "start"
{
	if alarm_start == true
	{

		if note_no >= ds_list_size(beat_map)
		{
			alarm_start = false
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
		if !audio_is_playing(play_music)
		{
			with (obj_music_note_check)
			{
				instance_destroy()
			}
			ds_list_destroy(beat_map)
			song_playing = false
			obj_player.hascontrol = true
			goal_rank = ""
			if assigned_mat != ""
			{
				with (assigned_mat)
				{
					switch (obj_music_control.music_rank)
					{
						case "D": rank = letter_rank.D
						case "C": rank = letter_rank.C
						case "B": rank = letter_rank.B
						case "A": rank = letter_rank.A
						case "S": rank = letter_rank.S
					}
				}
			}
			mode = ""
		}
	}
	if ds_exists(beat_map, ds_type_list) //grab rank depending on score
	{
		if global.total_music_score <= ds_list_size(beat_map) * 50
		{
			music_rank = "D"
		}
		else if global.total_music_score <= ds_list_size(beat_map) * 100
		{
			music_rank = "C"
		}
		else if global.total_music_score <= ds_list_size(beat_map) * 200
		{
			music_rank = "B"
		}
		else if global.total_music_score < ds_list_size(beat_map) * 300
		{
			music_rank = "A"
		}
		else if global.total_music_score >= ds_list_size(beat_map) * 300
		{
			music_rank = "S"
		}
	}
}