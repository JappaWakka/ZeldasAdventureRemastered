//Load Audio Groups
if !audio_group_is_loaded(AudioGroup_Music)
{
	Audio_Init_Soundtrack();
	audio_group_load(AudioGroup_Music);
	
	global.CurrentMusic_Name = "Beach_Ocean";
	global.CurrentMusic_Asset = Music_Silence;
	global.CurrentMusic_IntroLength = 0.25;
	global.CurrentMusic_LoopLength = 0.25;
	global.SwitchTracks = true
	
	global.Initialized = false; //Don't play any music yet
	global.CameraIsPanning = true; //If global.CameraIsPanning is true, the player can't move (or make sounds)
}
if !audio_group_is_loaded(AudioGroup_SoundFX)
{
	audio_group_load(AudioGroup_SoundFX);
	global.Initialized = false; //Don't play any sound effects yet
	global.CameraIsPanning = true; //If global.CameraIsPanning is true, the player can't move (or make sounds)
	global.EnemySoundPlaying = false
}

if !audio_group_is_loaded(AudioGroup_Dialogue)
{
	audio_group_load(AudioGroup_Dialogue);
	global.Initialized = false; //Don't play any sound effects yet
	global.CameraIsPanning = true; //If global.CameraIsPanning is true, the player can't move (or make sounds)
}

if room == Room_Overworld //Check if we're in the Overworld room and not in the Main Menu or a Cutscene room for example
{
	Audio_Init_MusicTileMap() //This function stores which tiles correspond to which music track in the two-dimensional array global.Music[x][y]
}

if global.Initialized = true
{
	if room == Room_Overworld //Check if we're in the Overworld room and not in the Main Menu or a Cutscene room for example
	{
		global.CameraIsPanning = false; //Make the player able to move again
		//Set the various global.CurrentMusic properties to the ones defined in the global.Music[x][y] array based on the current tile the player is on
		Audio_SetCurrentMusic(global.Music[global.CurrentTile.x][global.CurrentTile.y])
	}
	global.CurrentDialogue_Asset = Dialog_None;
	global.CurrentDialogue_ID = audio_play_sound(Dialog_None,500,false);
	BGAudio_Track = Audio_PlayMusic(global.CurrentMusic_Asset); //Play the current song
	BGAudio_IntroLength = global.CurrentMusic_IntroLength; //Set the length of the intro part of the audio track
	BGAudio_LoopLength = global.CurrentMusic_LoopLength; //Set the length of the looping part of the audio track
	BGAudio_TotalLength = BGAudio_IntroLength + BGAudio_LoopLength; //This is used to determine whether or not the playback is in the buffer area of the audio track
}

