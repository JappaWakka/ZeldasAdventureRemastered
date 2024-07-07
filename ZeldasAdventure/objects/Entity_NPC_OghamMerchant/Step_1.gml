///@description Default NPC Step Event
if IsPlayerOnSameTile() = true
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
else
{
	Animating = true
	image_speed = 0
	image_index = 0
	visible = false
	sprite_index = Sprite_NPC_OghamMerchant_Showing
}
