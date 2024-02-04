function GenerateSaveDataFile()
{
	ini_open(global.SaveDataFileName)
	
	for (var i = 2; i >= 0; i--)
	{
		var Section = "Save" + string(i)
		if !ini_section_exists(Section)
		{
			ini_write_string(Section, "Register", "");
			ini_write_string(Section, "InventoryCelestialSigns", "");
			ini_write_string(Section, "InventorySpells", "");
			ini_write_string(Section, "InventoryTreasure", "");
			ini_write_real(Section, "CurrentKeys", 0);
			ini_write_real(Section, "CurrentRubies", 0);
			ini_write_string(Section, "PlayerSpawn", "Spawn_Overworld");
			ini_write_real(Section, "Defense", 30);
			ini_write_real(Section, "Power", 30);
			ini_write_real(Section, "MaxHealth", 60);
			ini_write_real(Section, "CurrentHealth", 60);
			ini_write_string(Section, "Name", "");
		}
	}
	
	if !ini_section_exists("Options")
	{
		ini_write_real("Options",	"DebugMode",		0);
		ini_write_real("Options",	"WindowScale",		3);
		ini_write_real("Options",	"Fullscreen",		0);
		ini_write_real("Options",	"ShowSubtitles",	1);
		ini_write_real("Options",	"RemasteredMode",	0);
		ini_write_string("Options",	"CurrentLanguage",	"en");
		ini_write_real("Options",	"VolumeMaster",		1);
		ini_write_real("Options",	 "VolumeMusic",		1);
		ini_write_real("Options",	 "VolumeSoundFX",	1);
		ini_write_real("Options",	 "VolumeDialogue",	1);
	}
	ini_close()
	
	if file_exists(global.KeyBindingsFileName) = false
	{
		var KeyBindingsJSON = file_text_open_write(global.KeyBindingsFileName)
		file_text_write_string(KeyBindingsJSON,input_system_export())
		file_text_close(KeyBindingsJSON)
	}
}