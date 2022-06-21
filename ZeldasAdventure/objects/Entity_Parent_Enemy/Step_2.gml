//Allow other sounds to play
if global.EnemySound <> -1
{
	if audio_is_playing(global.EnemySound) = false
	{
		global.global.EnemySoundPlaying = false
		global.EnemySound = -1
	}
}