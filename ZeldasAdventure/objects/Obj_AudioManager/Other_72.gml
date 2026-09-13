if audio_group_is_loaded(AudioGroup_Music) && audio_group_is_loaded(AudioGroup_SoundFX) && audio_group_is_loaded(AudioGroup_Dialogue) //If all Audiogroups have been loaded
{
	if room == Room_Overworld //Check if we're in the Overworld room and not in the Main Menu or a Cutscene room for example
	{
		global.CameraIsPanning = false; //Make the player able to move again
		//Set the various global.CurrentMusic properties to the ones defined in the global.Music[x][y] array based on the current tile the player is on
		Audio_SetCurrentMusic(global.Music[global.CurrentTile.x][global.CurrentTile.y])
	}
	BGAudio_Track = Audio_PlayMusic(global.CurrentMusic_Asset); //Play the current song
	BGAudio_IntroLength = global.CurrentMusic_IntroLength; //Set the length of the intro part of the audio track
	BGAudio_LoopLength = global.CurrentMusic_LoopLength; //Set the length of the looping part of the audio track
	BGAudio_TotalLength = BGAudio_IntroLength + BGAudio_LoopLength; //This is used to determine whether or not the playback is in the buffer area of the audio track
	global.Initialized = true; //To tell the game it can start playing audio
	if room = Room_InitGame
	{
		/// Correct Resolution
		var Resolution = 
		[	ViewWidth * global.WindowScale,
			(ViewHeight + global.AspectRatio) * global.WindowScale
		]
		if surface_get_width(application_surface) != Resolution[0] or surface_get_height(application_surface) != Resolution[1] or
		window_get_width() != Resolution[0] or window_get_height() != Resolution[1]
		{
			window_set_size(Resolution[0],Resolution[1]);
			surface_resize(application_surface,Resolution[0],Resolution[1]);
		}
		if window_get_fullscreen() = false
		{
			window_center()
		}
		
		room_goto(Room_Cutscene_Logos)
	}
}