// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeConfigDevice(Value){
	ConfigDevice = Value
}

function ChangeLanguage(LanguageIndex){
	var oldSetting = global.CurrentLanguage
	set_language(LanguageIndex)
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
	var Resolution = 
	[	ViewWidth * global.WindowScale,
		(ViewHeight + global.AspectRatio) * global.WindowScale
	]
	if surface_get_width(application_surface) != Resolution[0] or surface_get_height(application_surface) != Resolution[1]
	{
		window_set_size(Resolution[0],Resolution[1]);
		surface_resize(application_surface,Resolution[0],Resolution[1]);
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

function ChangeAspectRatio(Value){
	var oldSetting = global.AspectRatio
	switch Value
	{
		case 0:
			global.AspectRatio = 0
			break
		case 1:
			global.AspectRatio = 40
			break
	}
	var Resolution = 
	[	ViewWidth * global.WindowScale,
		(ViewHeight + global.AspectRatio) * global.WindowScale
	]
	if surface_get_width(application_surface) != Resolution[0] or surface_get_height(application_surface) != Resolution[1]
	{
		window_set_size(Resolution[0],Resolution[1]);
		surface_resize(application_surface,Resolution[0],Resolution[1]);
	}
	if oldSetting <> global.AspectRatio
	{
		SavedSettings = false
	}
}

function GetAspectRatio(){
	switch global.AspectRatio
	{
		case 0:
			return 0
			break
		case 40:
			return 1
			break
	}
	
}

function ResetSettings()
{
	global.WindowScale = 3;
	global.Fullscreen = 0;
	global.ShowSubtitles = 1;
	global.RemasteredMode = 1;
	global.CurrentLanguage = 0;
	global.AspectRatio = 0;
	global.VolumeMaster = 1;
	global.VolumeMusic = 1;
	global.VolumeSoundFX = 1;
	global.VolumeDialogue = 1;
	audio_group_set_gain(AudioGroup_Music,global.VolumeMusic * global.VolumeMaster,0);
	audio_group_set_gain(AudioGroup_SoundFX,global.VolumeSoundFX * global.VolumeMaster,0);
	audio_group_set_gain(AudioGroup_Dialogue,global.VolumeDialogue * global.VolumeMaster,0);
	
	input_profile_reset_bindings("keyboard_and_mouse")
	input_profile_reset_bindings("gamepad")
	set_language(global.CurrentLanguage)
	
	//Reset Game Menu (2)
	var CurrentGrid = Menu_Pages[2]
	CurrentGrid[# 3, 0] = real(global.Fullscreen)
	CurrentGrid[# 3, 1] = global.WindowScale - 1
	CurrentGrid[# 3, 2] = real(global.RemasteredMode)
	CurrentGrid[# 3, 3] = real(global.ShowSubtitles)
	CurrentGrid[# 3, 4] = global.CurrentLanguage
	CurrentGrid[# 3, 5] = GetAspectRatio()
	
	//Reset Audio Menu (3)
	CurrentGrid = Menu_Pages[3]
	CurrentGrid[# 3, 0] = global.VolumeMaster
	CurrentGrid[# 3, 1] = global.VolumeMusic
	CurrentGrid[# 3, 2] = global.VolumeSoundFX
	CurrentGrid[# 3, 3] = global.VolumeDialogue
	
	//Reset the WindowScale
	var Resolution = 
	[	ViewWidth * global.WindowScale,
		(ViewHeight + global.AspectRatio) * global.WindowScale
	]
	if surface_get_width(application_surface) != Resolution[0] or surface_get_height(application_surface) != Resolution[1]
	{
		window_set_size(Resolution[0],Resolution[1]);
		surface_resize(application_surface,Resolution[0],Resolution[1]);
	}
	SavedSettings = false
}