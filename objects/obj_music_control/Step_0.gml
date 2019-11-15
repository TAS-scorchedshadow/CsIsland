/// @description 
if mode == "init_2"
{
	global.music_score = ""
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
		if !audio_is_playing(play_music)
		{
			with (obj_music_note_check)
			{
				instance_destroy()
			}
			song_playing = false
			obj_player.hascontrol = true
			mode = ""
		}
	}
}