///@description Do the animation again
if EnableAnimationAlarm = true
{
	if sprite_index = OghamMerchant_Showing
	{
		sprite_index = OghamMerchant_Fiddling
	}
	else
	{
		sprite_index = OghamMerchant_Showing
	}
	Animating = true
}