function Settings_Save()
{
	ini_open(global.SaveDataFileName)
	if !ini_section_exists("Options")
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
}