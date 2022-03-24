if audio_group_is_loaded(AudioGroup_Music) && audio_group_is_loaded(AudioGroup_SoundFX) //If all Audiogroups have been loaded
{
	global.CameraIsPanning = false; //Make the player able to move again
	if room == Room_Overworld //Check if we're in the Overworld room and not in the Main Menu or a Cutscene room for example
	{
		//Set the various global.CurrentMusic properties to the ones defined in the global.Music[x][y] array based on the current tile the player is on
		Music_SetCurrent(global.Music[global.CurrentTile.x][global.CurrentTile.y])
	}
	BGAudio_Track = Music_Play(global.CurrentMusic_Asset); //Play the current song
	BGAudio_IntroLength = global.CurrentMusic_IntroLength; //Set the length of the intro part of the audio track
	BGAudio_LoopLength = global.CurrentMusic_LoopLength; //Set the length of the looping part of the audio track
	BGAudio_TotalLength = BGAudio_IntroLength + BGAudio_LoopLength; //This is used to determine whether or not the playback is in the buffer area of the audio track
	Initialized = true; //To tell the game it can start playing audio
}