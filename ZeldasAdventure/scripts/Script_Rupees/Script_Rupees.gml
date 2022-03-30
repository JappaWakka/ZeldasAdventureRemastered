function IncreaseRubies(Amount)
{
	if audio_is_playing(SFX_Pickup_Ruby) = false
	{
		audio_play_sound(SFX_Pickup_Ruby,999,false)
	}
	global.DesiredRubies = clamp(global.CurrentRubies + Amount, 0, 999)
	
	if global.CurrentRubies < global.DesiredRubies
	{
		global.CurrentRubies = clamp(global.CurrentRubies + 2, 0, 999)
		alarm[9] = 0.02 * room_speed //Add Ruby Amount
		alarm[10] = 0.25 * room_speed //Play Ruby Sound
	}
}
function DecreaseRubies(Amount)
{
	if audio_is_playing(SFX_Pickup_Ruby) = false
	{
		audio_play_sound(SFX_Pickup_Ruby,999,false)
	}
	global.DesiredRubies = clamp(global.CurrentRubies - Amount, 0, 999)
	
	if global.CurrentRubies > global.DesiredRubies
	{
		global.CurrentRubies = clamp(global.CurrentRubies - 2, 0, 999)
		alarm[9] = 0.02 * room_speed //Add Ruby Amount
		alarm[10] = 0.25 * room_speed //Play Ruby Sound
	}
}