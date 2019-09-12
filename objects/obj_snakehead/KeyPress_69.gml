if global.selecteditem = 1 && moving = false
{
instance_create_layer(x,y,"Snake",obj_snakebody)
moving = true
i = 0;
alarm[3] = 1
alarm[0] = 2
}