function Settings_Save()
{
	ini_open(global.SaveDataFileName)
	if ini_section_exists("Options")
	{
		ini_write_real("Options",	"WindowScale",		global.WindowScale);
		ini_write_real("Options",	"Fullscreen",		real(global.Fullscreen));
		ini_write_real("Options",	"ShowSubtitles",	real(global.ShowSubtitles));
		ini_write_real("Options",	"RemasteredMode",	real(global.RemasteredMode));
		ini_write_string("Options",	"CurrentLanguage",	global.CurrentLanguage);
		ini_write_real("Options",	"VolumeMaster",		global.VolumeMaster);
		ini_write_real("Options",	 "VolumeMusic",		global.VolumeMusic);
		ini_write_real("Options",	 "VolumeSoundFX",	global.VolumeSoundFX);
		ini_write_real("Options",	 "VolumeDialogue",	global.VolumeDialogue);
	}
	ini_close()
	
	var KeyBindingsJSON = file_text_open_write(global.KeyBindingsFileName)
	file_text_write_string(KeyBindingsJSON,input_system_export())
	file_text_close(KeyBindingsJSON)
	SavedSettings = true
}

function Settings_Discard()
{
	//Reset Settings
	global.WindowScale			=	TempWindowScale
	global.Fullscreen			=	TempFullscreen
	global.ShowSubtitles		=	TempShowSubtitles
	global.RemasteredMode		=	TempRemasteredMode
	global.CurrentLanguage		=	TempCurrentLanguage
	global.VolumeMaster			=	TempVolumeMaster
	global.VolumeMusic			=	TempVolumeMusic	
	global.VolumeSoundFX		=	TempVolumeSoundFX
	global.VolumeDialogue		=	TempVolumeDialogue
	
}

function Settings_Update()
{
	//Update Settings
	TempWindowScale			=		global.WindowScale
	TempFullscreen			=		global.Fullscreen
	TempShowSubtitles		=		global.ShowSubtitles
	TempRemasteredMode		=		global.RemasteredMode
	TempCurrentLanguage		=		global.CurrentLanguage
	TempVolumeMaster		=		global.VolumeMaster
	TempVolumeMusic			=		global.VolumeMusic
	TempVolumeSoundFX		=		global.VolumeSoundFX
	TempVolumeDialogue		=		global.VolumeDialogue
	
}

function Settings_ExitToMain()
{
	if SavedSettings = false
	{
		Settings_Discard()
	}
	else
	{
		Settings_Update()
	}
	//Return to Main Menu
	global.FadeSpeed = 16;
	global.FadeProgress = 0;
	audio_play_sound(Settings_Accept,1000,false);
	IsFading = true;
	NextPage = Menu_Page.Main;
	SavedSettings = false;
	
}