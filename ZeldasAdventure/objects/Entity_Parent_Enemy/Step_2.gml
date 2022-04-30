//Allow other sounds to play
if EnemySound <> -1
{
	if audio_is_playing(EnemySound) = false
	{
		global.EnemySoundPlaying = false
		EnemySound = -1
	}
}