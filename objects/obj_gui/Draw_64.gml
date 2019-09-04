draw_self();
draw_set_font(font0)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text(x,y,global.selecteditem)

draw_sprite(spr_abilties,global.selecteditem,x,y)
