var c_width = 100
var c_height = 950
draw_set_font(font0)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_sprite(spr_gui,0,c_width ,c_height)
draw_sprite(spr_abilties,global.selecteditem,c_width ,c_height)
