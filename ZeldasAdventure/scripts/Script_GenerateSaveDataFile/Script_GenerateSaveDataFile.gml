function Script_GenerateSaveDataFile()
{
	ini_open(global.SaveDataFileName)
	
	for (var i = 1; i <= 3; i++)
	{
		var Section = "Save"string(i)
		if !ini_section_exists(Section)
		{
			ini_write_string(Section, "Name", "EMPTY");
			ini_write_real(Section, "CurrentHealth", 60);
			ini_write_real(Section, "MaxHealth", 60);
			ini_write_real(Section, "Power", 30);
			ini_write_real(Section, "Defense", 30);
			ini_write_string(Section, "CurrentMap", "Overworld");
			ini_write_string(Section, "PlayerSpawn", "Spawn_Overworld");
			ini_write_real(Section, "CurrentTileX", 6);
			ini_write_real(Section, "CurrentTileY", 22);
			ini_write_real(Section, "CurrentRubies", 0);
			ini_write_real(Section, "CurrentKeys", 0);
			ini_write_string(Section, "Inventory", "");
		}
	}
	
	if !ini_section_exists("Options")
	{
			ini_write_real("Options", "DebugMode", 1);
			ini_write_real("Options", "WindowScale", 3);
			ini_write_real("Options", "Fullscreen", 0);
			ini_write_real("Options", "ShowSubtitles", 1);
			ini_write_real("Options", "RemasteredMode", 0);
			ini_write_string("Options", "CurrentLanguage", "en");
			ini_write_real("Options", "VolumeMaster", 1);
			ini_write_real("Options", "VolumeMusic", 1);
			ini_write_real("Options", "VolumeSoundFX", 1);
			ini_write_real("Options", "VolumeDialogue", 1);
	}
	ini_close()
}