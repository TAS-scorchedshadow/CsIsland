/// @description Play music
song_playing = true;
var len = audio_sound_length(play_music)
audio_play_sound(play_music,10,false)
alarm[3] = len * room_speed;
