if collision_point(x,y,Entity_Player,true,false) = true
{
	if image_alpha > 0.5
	{
		image_alpha -= 0.125
	}
}
else
{
	if image_alpha < 1
	{
		image_alpha += 0.125
	}
}