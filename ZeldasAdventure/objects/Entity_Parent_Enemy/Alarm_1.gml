///@description Play Enemy Sound
if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight &&
global.CameraIsPanning = false
{
	if global.EnemySoundPlaying = false
	{
		global.EnemySound = audio_play_sound_relative(EnemySoundName,1000,false)
		global.EnemySoundPlaying = true
	}
}
alarm_set(1, random_range(2*room_speed,6*room_speed));