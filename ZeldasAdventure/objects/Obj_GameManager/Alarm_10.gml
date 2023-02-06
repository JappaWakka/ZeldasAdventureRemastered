/// @description Play Ruby Sound
if global.CurrentRubies < global.DesiredRubies
{
	if audio_is_playing(SFX_Pickup_Ruby) = false
	{
		audio_play_sound_relative(SFX_Pickup_Ruby,999,false)
	}
	alarm[10] = 0.25 * room_speed //Play Ruby Sound
}	