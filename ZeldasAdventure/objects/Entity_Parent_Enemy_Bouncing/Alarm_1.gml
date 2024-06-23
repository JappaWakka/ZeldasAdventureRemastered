///@description Play Enemy Sound
if IsPlayerOnSameTile_Enemy() = true && global.CameraIsPanning = false
{
	if global.EnemySoundPlaying = false
	{
		global.EnemySound = audio_play_sound_relative(EnemySoundName,1000,false)
		global.EnemySoundPlaying = true
	}
}
alarm_set(1, random_range(2*FrameRate,6*FrameRate));