///@description Change the highlighted arrow
chosendirection ++
if chosendirection >= ds_list_size(avaliabledir) chosendirection = 0
highlighteddirection = ds_list_find_value(avaliabledir,chosendirection)
alarm[2] = (60 / tempo) * room_speed; //Finding how many seconds for 1 beat then adjusting for the room speed
