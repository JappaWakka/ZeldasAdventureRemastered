function ChangeVolume(GroupIndex, Value){
	switch GroupIndex
	{
		case 0:  //Master
			global.VolumeMaster = Value;
			audio_group_set_gain(AudioGroup_Music,global.VolumeMusic * global.VolumeMaster,0);
			audio_group_set_gain(AudioGroup_SoundFX,global.VolumeSoundFX * global.VolumeMaster,0);
			audio_group_set_gain(AudioGroup_Dialogue,global.VolumeDialogue * global.VolumeMaster,0);
			audio_play_sound(Menu_ChangeSetting,1000,false)
			break;
		case 1:  //Music
			global.VolumeMusic = Value;
			audio_group_set_gain(AudioGroup_Music,global.VolumeMusic * global.VolumeMaster,0);
			break;
		case 2:  //SoundFX
			global.VolumeSoundFX = Value;
			audio_group_set_gain(AudioGroup_Music,global.VolumeSoundFX * global.VolumeMaster,0);
			break;
		case 3:  //Dialogue
			global.VolumeDialogue = Value;
			audio_group_set_gain(AudioGroup_Music,global.VolumeDialogue * global.VolumeMaster,0);
			break;
	}
}