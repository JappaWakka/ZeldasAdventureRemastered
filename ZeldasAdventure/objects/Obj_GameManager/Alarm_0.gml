//Allow other sounds to play
if EnemySound <> -1
{
	if audio_is_playing(EnemySound) = false
	{
		EnemySound = -1
		global.EnemySoundPlaying = false
	}
}
else
{
	global.EnemySoundPlaying = false
}