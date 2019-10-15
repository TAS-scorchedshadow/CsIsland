/// @description
draw_set_font(font0)
draw_self()
draw_text(x - 50,y,"Left: " + string((place_free(x-32,y))))
draw_text(x + 50,y,"Right: " + string((place_free(x+32,y))))
draw_text(x,y+50,"Down: " + string((place_free(x,y+32))))
draw_text(x,y-50,"Up: " + string((place_free(x,y-32))))