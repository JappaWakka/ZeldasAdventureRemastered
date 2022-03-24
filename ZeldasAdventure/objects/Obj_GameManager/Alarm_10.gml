/// @description Play Rupee Sound
if global.CurrentRupees < global.DesiredRupees
{
	if audio_is_playing(SFX_Pickup_Rupee) = false
	{
		audio_play_sound(SFX_Pickup_Rupee,999,false)
	}
	alarm[10] = 0.25 * room_speed //Play Rupee Sound
}	