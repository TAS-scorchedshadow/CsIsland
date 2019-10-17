/// @description
draw_set_font(font0)
draw_self()
draw_text(x - 50,y,"Left: " + string(position_empty(x-64,y)))
draw_text(x + 50,y,"Right: " + string(position_empty(x+64,y)))
draw_text(x,y+50,"Down: " + string(position_empty(x,y+64)))
draw_text(x,y-50,"Up: " + string(position_empty(x,y-64)))