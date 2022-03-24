if Initialized = true //Check if all the Audiogroups have been loaded
{
	if global.SwitchTracks = true //A music track switch has been requested, at the room start or by the Camera (controlled by Obj_GameManager)
	{
		var NextTrackName = ""
		if room == Room_Overworld //Check if we're in the Overworld room and not in the Main Menu or a Cutscene room for example
		{
			NextTrackName = global.Music[global.CurrentTile.x][global.CurrentTile.y]
		}
		//I'll set NextTrackName to other values once I've made the other rooms like the Main Menu
		if (global.CurrentMusic_Name != NextTrackName) //Check if the track is not the same as the one currently playing
		{
			audio_stop_sound(global.CurrentMusic_Asset) //Stop the old music track
			//Set the various global.CurrentMusic properties to the ones defined in the global.Music[x][y] array based on the current tile the player is on
			Music_SetCurrent(NextTrackName)
			BGAudio_IntroLength = global.CurrentMusic_IntroLength; //Set the length of the intro part of the audio track
			BGAudio_LoopLength = global.CurrentMusic_LoopLength; //Set the length of the looping part of the audio track
			BGAudio_TotalLength = BGAudio_IntroLength + BGAudio_LoopLength; //This is used to determine whether or not the playback is in the buffer area of the audio track
			audio_sound_set_track_position(BGAudio_Track,0) //Set the playback position back to the start (just in case)
			BGAudio_Track = Music_Play(global.CurrentMusic_Asset); //Play the song
		}
		global.SwitchTracks = false; //Whether a song has been played or not, reset the variable so a music track switch can be requested again
	}
	else
	{
		var BGAudio_Position = audio_sound_get_track_position(BGAudio_Track);
		if (BGAudio_Position > BGAudio_TotalLength) //If the playback position is larger than the intro + the loop, it's in the buffer area of the audio track
		{
			audio_sound_set_track_position(BGAudio_Track, BGAudio_Position - BGAudio_LoopLength); //Subtract the length of the loop from the current playback position
		}
	}
}