///@description Sardak Barrier NPC Step Event
if IsPlayerOnSameTile() = true
{
	visible = true
	if Animating = true
	{
		image_speed = d(ImageSpeed)
	}
	else
	{
		image_speed = 0
	}
	
}
else
{
	Animating = true
	image_speed = 0
	image_index = 0
	visible = false
}
