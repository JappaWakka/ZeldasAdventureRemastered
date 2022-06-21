//Load Audio Groups
if !audio_group_is_loaded(AudioGroup_Music)
{
	Audio_Init_Soundtrack(global.NewSoundtrack);
	audio_group_load(AudioGroup_Music);
	Initialized = false; //Don't play any music yet
	global.CameraIsPanning = true; //If global.CameraIsPanning is true, the player can't move (or make sounds)
}
if !audio_group_is_loaded(AudioGroup_SoundFX)
{
	audio_group_load(AudioGroup_SoundFX);
	Initialized = false; //Don't play any sound effects yet
	global.CameraIsPanning = true; //If global.CameraIsPanning is true, the player can't move (or make sounds)
	global.global.EnemySoundPlaying = false
}
if room == Room_Overworld //Check if we're in the Overworld room and not in the Main Menu or a Cutscene room for example
{
	Audio_Init_MusicTileMap() //This function stores which tiles correspond to which music track in the two-dimensional array global.Music[x][y]
}