///@description Getting Avaliable Directions
ds_list_clear(avaliabledir)
if position_empty(x,y-move) ds_list_add(avaliabledir,0)
if position_empty(x+move,y) ds_list_add(avaliabledir,90)
if position_empty(x,y+move) ds_list_add(avaliabledir,180)
if position_empty(x-move,y) ds_list_add(avaliabledir,270)


