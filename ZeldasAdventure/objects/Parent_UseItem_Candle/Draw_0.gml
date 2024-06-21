var DrawStart =
{
	x : (x / 384 - frac(x / 384)) * 384,
	y : (y / 240 - frac(y / 240)) * 240,
}
draw_set_color(make_color_rgb(16,16,16))
draw_set_alpha(Alpha)
draw_rectangle(DrawStart.x,DrawStart.y,DrawStart.x + 384,DrawStart.y + 240,false)
draw_set_color(c_white)
draw_set_alpha(1)

if Alpha > 0 && IsMenuVisible() = false && IsPlayerOnSameTile() = true
{
	draw_sprite(Entity_Player.sprite_index,Entity_Player.image_index,Entity_Player.x,Entity_Player.y)
}