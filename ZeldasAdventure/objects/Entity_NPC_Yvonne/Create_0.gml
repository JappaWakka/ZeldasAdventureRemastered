OriginX = x;
OriginY = y;
image_speed = 0
image_index = 0
Animating = true

if global.RemasteredMode = false
{
	if Item_FindIndex(Treasures.Flute,0) <> -1
	{
		instance_destroy()
	}
}