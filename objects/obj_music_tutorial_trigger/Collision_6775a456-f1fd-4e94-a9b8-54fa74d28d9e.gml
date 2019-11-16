/// @description Start the music tutorial
instance_create_layer(obj_player.x,obj_player.y - 50,"Instances",obj_tutorial_music_1)
obj_player.hascontrol = false
instance_destroy();
