function Audio_PlayMusic(TrackAsset) //Play a music track
{
	var MusicID = audio_play_sound(TrackAsset,1000,false);
	return MusicID
}
function Audio_StopMusic()
{
	audio_stop_sound(global.CurrentMusic_Asset)
	Audio_SetCurrentMusic("Silence")
	if instance_exists(Obj_AudioManager)
	{
		Obj_AudioManager.BGAudio_Track = Audio_PlayMusic(global.CurrentMusic_Asset)
	}
	else
	{
		Audio_PlayMusic(global.CurrentMusic_Asset)	
	}
}