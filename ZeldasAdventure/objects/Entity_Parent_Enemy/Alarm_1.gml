///@description Play Enemy Sound
if global.EnemySoundPlaying = false
{
	
	global.EnemySoundPlaying = true
	
	global.EnemySound = audio_play_sound_relative(EnemySoundName,500,false)
			
}