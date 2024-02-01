///@description Default NPC Step Event
if IsPlayerOnSameTile() = true
{
	if global.CameraIsPanning = false
	{
		visible = true
		if Animating = true
		{
			image_speed = d(ImageSpeed)
		}
		else
		{
			image_index = 0
			image_speed = 0
		}
	}
	
}
else
{
	Animating = true
	image_speed = 0
	image_index = 0
	visible = false
}
