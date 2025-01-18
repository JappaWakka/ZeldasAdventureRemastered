/// @description Play explosion sounds
if audio_is_playing(SFX_Enemy_Immune) = false
{
	if soundtimer = -1
	{
		soundtimer = 8
	}
	if soundtimer = 0
	{
		if global.CameraIsPanning = false and IsMenuVisible() = false
		{
			audio_play_sound_relative(SFX_Enemy_Immune, 5000, false, x + irandom_range(-8, 8))
			soundtimer = -1
		}
	}
}

if soundtimer > 0
{
	soundtimer -=1
}





