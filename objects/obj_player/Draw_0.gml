if visible = true
{
	draw_self()
}
if instance_exists(obj_tutorial_music_1)
{
	draw_text(x,y,"Flamingo exists")
	draw_text(x,y+64,obj_tutorial_music_1.x)
	draw_text(x,y-64,obj_tutorial_music_1.y)
}