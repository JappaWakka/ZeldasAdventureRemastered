///@description Do the animation again
if EnableAnimationAlarm = true
{
	if sprite_index = Sprite_NPC_OghamMerchant_Showing
	{
		sprite_index = Sprite_NPC_OghamMerchant_Fiddling
	}
	else
	{
		sprite_index = Sprite_NPC_OghamMerchant_Showing
	}
	Animating = true
}