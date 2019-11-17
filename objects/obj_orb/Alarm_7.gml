/// @description Insert description here
// You can write your code in this editor
obj_gui.blackbars = false
instance_create_layer(obj_charlotte_animated.x,obj_charlotte_animated.y - 100,"Instances",obj_c_sleeping)
instance_destroy(obj_charlotte_animated);
audio_stop_sound(msc_megalovania);
audio_play_sound(msc_frolic,0,false);
obj_camera.zoom = 2.5;	
obj_camera.follow = obj_player;
alarm[8] = 12 * room_speed;