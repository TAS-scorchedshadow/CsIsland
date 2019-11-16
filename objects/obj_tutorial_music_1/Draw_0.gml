/// @description
draw_self();
if draw_mode == "speaking" or draw_mode == "demonstrate"
{
   draw_set_alpha(1)
   draw_set_color(c_fuchsia)
   draw_rectangle(box_x1-2,box_y1-2,box_x2+2,box_y2+2, false)
   draw_set_color(c_white)
   draw_rectangle(box_x1,box_y1,box_x2,box_y2, false) //try true for last argument
   draw_set_halign(fa_left)
   draw_set_valign(fa_top)
   draw_set_font(dnt)
   draw_text_ext_color(box_message_x1,box_message_y1,box_message,12,190,c_black,c_black,c_black,c_black,alpha)
}
