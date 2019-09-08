if global.selectedbutton = 0 room_goto(rm_title)
if global.selectedbutton = 1 
{
	audio_stop_sound(msc_prophet)
	audio_play_sound(msc_prophet,0,true)
}