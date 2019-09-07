draw_self();

if !(block == blocked.up) draw_sprite_ext(spr_arrow, 0, x, y - 64, 1, 1, 0, 0, 1 );
if !(block == blocked.down) draw_sprite_ext(spr_arrow, 0, x, y + 64, 1, 1, 180, 0, 1 );
if !(block == blocked.right) draw_sprite_ext(spr_arrow, 0, x + 64 , y , 1, 1, -90, 0, 1 );
if !(block == blocked.left) draw_sprite_ext(spr_arrow, 0, x - 64 , y , 1, 1, 90, 0, 1 );