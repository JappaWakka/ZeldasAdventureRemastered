// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame_Delete()
{
	if ConfirmDelete = 1
	{
		ini_open(global.SaveDataFileName)
		var Section = "Save" + string(global.CurrentSaveGame)
		if ini_section_exists(Section)
		{
			ini_write_string(Section, "CurrentMap", "Overworld");
			ini_write_string(Section, "InventoryCelestialSigns", "");
			ini_write_string(Section, "InventorySpells", "");
			ini_write_string(Section, "InventoryTreasures", "");
			ini_write_real(Section, "CurrentKeys", 0);
			ini_write_real(Section, "CurrentRubies", 0);
			ini_write_real(Section, "CurrentTileY", 22);
			ini_write_real(Section, "CurrentTileX", 6);
			ini_write_string(Section, "PlayerSpawn", "Spawn_Overworld");
			ini_write_real(Section, "Defense", 30);
			ini_write_real(Section, "Power", 30);
			ini_write_real(Section, "MaxHealth", 60);
			ini_write_real(Section, "CurrentHealth", 60);
			ini_write_string(Section, "Name", "");
		}
		ini_close()
		global.SavePlayerNames[global.CurrentSaveGame] = ""
		ConfirmDelete = 2
		alarm[1] = FrameRate
	}
	else
	{
		ConfirmDelete = 1
	}
}