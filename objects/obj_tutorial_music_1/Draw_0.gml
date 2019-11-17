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
if draw_mode == "demonstrate"
{
   draw_sprite_ext(spr_music_note,0,faded_note_x,faded_note_y,1,1,0,c_white,0.1)
   draw_sprite(spr_music_note,0,dark_note_x,dark_note_y)
}
