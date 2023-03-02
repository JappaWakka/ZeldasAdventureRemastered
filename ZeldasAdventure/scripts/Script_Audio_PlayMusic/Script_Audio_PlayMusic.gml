function Audio_PlayMusic(TrackAsset) //Play a music track
{
	var MusicID = audio_play_sound(TrackAsset,1000,false,global.VolumeMusic * global.VolumeMaster);
	return MusicID
}