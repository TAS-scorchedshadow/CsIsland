/// @description
mode = ""
draw = false
alpha = 0
display_text = false
message_no = 0
leaving = 0
image_speed = 0
ini_open("settings.ini")
status = ini_read_real("artifact_flamingo",string(id),0)
ini_close()
if status == 1
{
	instance_destroy()
}

box_message = "I love shiny balls! If you give me 2, I'll let you pass. (Press [SPACE] to give me balls)"
box_w = 200 //width of your box
box_h = 100 //height of your box
box_x1 = x
box_y1 = y - sprite_width - box_h
box_x2 = box_x1 + box_w
box_y2 = box_y1 + box_h
box_message_x1 = box_x1 + 10
box_message_y1 = box_y1 + 15

