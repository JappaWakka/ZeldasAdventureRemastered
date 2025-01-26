// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeConfigDevice(Value){
	ConfigDevice = Value
}

function ChangeLanguage(LanguageIndex){
	var oldSetting = global.CurrentLanguage
	switch LanguageIndex
	{
		case 0 : //English
			global.CurrentLanguage = global.Languages.English;
			break;
		case 1 : //Nederlands
			global.CurrentLanguage = global.Languages.Nederlands;
			break;
	}
	if oldSetting <> global.CurrentLanguage
	{
		SavedSettings = false
	}
}

function ChangeRemasteredModeEnabled(Value){
	var oldSetting = global.RemasteredMode
	global.RemasteredMode = bool(Value)
	if oldSetting <> global.RemasteredMode
	{
		SavedSettings = false
	}
}

function ChangeResolution(Value)
{
	var oldSetting = global.WindowScale
	global.WindowScale = Value + 1
	if global.Fullscreen = false
	{
		window_set_size(ViewWidth * global.WindowScale,ViewHeight * global.WindowScale);
	}
	if oldSetting <> global.WindowScale
	{
		SavedSettings = false
	}
}

function ChangeSubtitlesEnabled(Value){
	var oldSetting = global.ShowSubtitles
	global.ShowSubtitles = bool(Value)
	if oldSetting <> global.ShowSubtitles
	{
		SavedSettings = false
	}
}

function ChangeVolume(GroupIndex, Value)
{
	switch GroupIndex
	{
		case 0:  //Master
			var oldSetting = global.VolumeMaster
			global.VolumeMaster = Value;
			audio_group_set_gain(AudioGroup_Music,global.VolumeMusic * global.VolumeMaster,0);
			audio_group_set_gain(AudioGroup_SoundFX,global.VolumeSoundFX * global.VolumeMaster,0);
			audio_group_set_gain(AudioGroup_Dialogue,global.VolumeDialogue * global.VolumeMaster,0);
			if oldSetting <> global.VolumeMaster
			{
				SavedSettings = false
			}
			break;
		case 1:  //Music
			var oldSetting = global.VolumeMusic
			global.VolumeMusic = Value;
			audio_group_set_gain(AudioGroup_Music,global.VolumeMusic * global.VolumeMaster,0);
			if oldSetting <> global.VolumeMusic
			{
				SavedSettings = false
			}
			break;
		case 2:  //SoundFX
			var oldSetting = global.VolumeSoundFX
			global.VolumeSoundFX = Value;
			audio_group_set_gain(AudioGroup_SoundFX,global.VolumeSoundFX * global.VolumeMaster,0);
			if oldSetting <> global.VolumeSoundFX
			{
				SavedSettings = false
			}
			break;
		case 3:  //Dialogue
			var oldSetting = global.VolumeDialogue
			global.VolumeDialogue = Value;
			audio_group_set_gain(AudioGroup_Dialogue,global.VolumeDialogue * global.VolumeMaster,0);
			if oldSetting <> global.VolumeDialogue
			{
				SavedSettings = false
			}
			break;
	}
}

function ChangeWindowMode(Value){
	var oldSetting = global.Fullscreen
	global.Fullscreen = bool(Value)
	if oldSetting <> global.Fullscreen
	{
		SavedSettings = false
	}
}

function Controls_Reset()
{
	input_profile_reset_bindings("keyboard_and_mouse")
	input_profile_reset_bindings("gamepad")
	SavedSettings = false
}