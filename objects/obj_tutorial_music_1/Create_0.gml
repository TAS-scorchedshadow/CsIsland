/// @description
y = obj_player.y - 400
x = obj_player.x
mode = "falling"
draw_mode = ""
alpha = 1
box_message = "Did you know that using the grindstone or flute resets the bushes?"
box_w = 200 //width of your box
box_h = 100 //height of your box
box_x1 = x
box_y1 = obj_player.y - 64 - sprite_width - box_h
box_x2 = box_x1 + box_w
box_y2 = box_y1 + box_h
box_message_x1 = box_x1 + 10
box_message_y1 = box_y1 + 15
