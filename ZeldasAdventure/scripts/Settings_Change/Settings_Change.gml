// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeConfigDevice(Value){
	ConfigDevice = Value
}

function ChangeLanguage(LanguageIndex){
	switch LanguageIndex
	{
		case 0 : //English
			global.CurrentLanguage = global.Languages.English;
			break;
		case 1 : //Nederlands
			global.CurrentLanguage = global.Languages.Nederlands;
			break;
	}		
}

function ChangeRemasteredModeEnabled(Value){
	global.RemasteredMode = bool(Value)
}

function ChangeResolution(Value){
	global.WindowScale = Value + 1	
}

function ChangeSubtitlesEnabled(Value){
	global.ShowSubtitles = bool(Value)
}

function ChangeVolume(GroupIndex, Value)
{
	switch GroupIndex
	{
		case 0:  //Master
			global.VolumeMaster = Value;
			audio_group_set_gain(AudioGroup_Music,global.VolumeMusic * global.VolumeMaster,0);
			audio_group_set_gain(AudioGroup_SoundFX,global.VolumeSoundFX * global.VolumeMaster,0);
			audio_group_set_gain(AudioGroup_Dialogue,global.VolumeDialogue * global.VolumeMaster,0);
			break;
		case 1:  //Music
			global.VolumeMusic = Value;
			audio_group_set_gain(AudioGroup_Music,global.VolumeMusic * global.VolumeMaster,0);
			break;
		case 2:  //SoundFX
			global.VolumeSoundFX = Value;
			audio_group_set_gain(AudioGroup_SoundFX,global.VolumeSoundFX * global.VolumeMaster,0);
			break;
		case 3:  //Dialogue
			global.VolumeDialogue = Value;
			audio_group_set_gain(AudioGroup_Dialogue,global.VolumeDialogue * global.VolumeMaster,0);
			break;
	}
}

function ChangeWindowMode(Value){
	global.Fullscreen = bool(Value)
}

function Controls_Reset()
{
	input_profile_reset_bindings("keyboard_and_mouse")
	input_profile_reset_bindings("gamepad")
}