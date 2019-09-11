///@description Change the highlighted arrow
chosendirection ++
if chosendirection >= ds_list_size(avaliabledir) chosendirection = 0
alarm[2] = (60 / tempo) * room_speed; //Finding how many seconds for 1 beat then adjusting for the room speed
