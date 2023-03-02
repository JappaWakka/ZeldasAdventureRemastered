function Script_GenerateSaveDataFile()
{
	ini_open(global.SaveDataFileName)
	
	for (var i = 1; i <= array_length(global.SavePlayerNames); i++)
	{
		if !ini_section_exists("Save" & i)
		{
			ini_write_string("Save" & i, "Name", "EMPTY");
			ini_write_real("Save" & i, "CurrentHealth", 60);
			ini_write_real("Save" & i, "MaxHealth", 60);
			ini_write_real("Save" & i, "Power", 1);
			ini_write_real("Save" & i, "Defense", 1);
			ini_write_string("Save" & i, "CurrentMap", "Overworld");
			ini_write_string("Save" & i, "PlayerSpawn", "Spawn_Overworld");
			ini_write_real("Save" & i, "CurrentTileX", 6);
			ini_write_real("Save" & i, "CurrentTileY", 22);
			ini_write_real("Save" & i, "CurrentRubies", 0);
			ini_write_real("Save" & i, "CurrentKeys", 0);
			ini_write_string("Save" & i, "Inventory", "");
		}
	}
	
	if !ini_section_exists("Options")
	{
			ini_write_real("Options", "DebugMode", 1);
			ini_write_real("Options", "WindowScale", 3);
			ini_write_real("Options", "Fullscreen", 0);
			//ini_write_real("Options", "NewSoundtrack", 0);
			ini_write_real("Options", "ShowSubtitles", 1);
			ini_write_real("Options", "RemasteredMode", 0);
			ini_write_string("Options", "CurrentLanguage", "en");
			ini_write_real("Options", "VolumeMaster", 1);
			ini_write_real("Options", "VolumeMusic", 1);
			ini_write_real("Options", "VolumeSoundFX", 1);
	}
}