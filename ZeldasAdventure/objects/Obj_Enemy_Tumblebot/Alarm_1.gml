///@description Play Sound
if global.global.EnemySoundPlaying = false
{
	global.global.EnemySoundPlaying = true
	global.EnemySound = audio_play_sound(SFX_Enemy_Tumblebot,500,false)
}