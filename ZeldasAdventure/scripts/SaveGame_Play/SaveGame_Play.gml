// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame_Play(){
	if global.SavePlayerNames[global.CurrentSaveGame] != ""
	{
		ini_open(global.SaveDataFileName)
		
		var Section = "Save" + string(global.CurrentSaveGame)
		global.Name = ini_read_string(Section,"Name","ZELDA");
		if global.Name = "MVBARICKMAN"
		{
			global.DebugMode = true
		}
		else
		{
			global.DebugMode = false
		}
		
		global.PlayerSpawn = ini_read_string(Section, "PlayerSpawn", "Spawn_Overworld");
		
		global.CurrentRubies = ini_read_real(Section, "CurrentRubies", 0);
		global.DesiredRubies = ini_read_real(Section, "CurrentRubies", 0);
		global.CurrentKeys = ini_read_real(Section, "CurrentKeys", 0);
		global.Inventory = {Treasures : ds_list_create(), Spells : ds_list_create(), CelestialSigns : ds_list_create()}
		
		var InventoryTreasureList = string_split(ini_read_string(Section, "InventoryTreasures", ""),",")
		if array_length(InventoryTreasureList) > 0
		{
			for (var i = 0; i <= array_length(InventoryTreasureList) - 1; i++)
			{
				if InventoryTreasureList[i] != ""
				{
					Item_Add(real(InventoryTreasureList[i]),0)
				}
			}
		}
		var InventorySpellsList = string_split(ini_read_string(Section, "InventorySpells", ""),",")
		if array_length(InventorySpellsList) > 0
		{
			for (var i = 0; i <= array_length(InventorySpellsList) - 1; i++)
			{
				if InventorySpellsList[i] != ""
				{
					Item_Add(real(InventorySpellsList[i]),1)
				}	
			}
		}
		var InventoryCelestialSignsList = string_split(ini_read_string(Section, "InventoryCelestialSigns", ""),",")
		if array_length(InventoryCelestialSignsList) > 0
		{
			for (var i = 0; i <= array_length(InventoryCelestialSignsList) - 1; i++)
			{
				if InventoryCelestialSignsList[i] != ""
				{
					Item_Add(real(InventoryCelestialSignsList[i]),2)
				}	
			}
		}
		var RegisterList = string_split(ini_read_string(Section, "Register", ""),",")
		if array_length(RegisterList) > 0
		{
			for (var i = 0; i <= array_length(RegisterList) - 1; i++)
			{
				if RegisterList[i] != ""
				{
					Register_Add(RegisterList[i])
				}	
			}
		}
		global.CurrentHealth = ini_read_real(Section, "CurrentHealth", 60);
		global.MaxHealth = ini_read_real(Section, "MaxHealth", 60);
		global.Power = ini_read_real(Section, "Power", 30);
		global.Defense = ini_read_real(Section, "Defense", 30);
		
		var VisitedTilesList = string_split(ini_read_string(Section, "VisitedTiles", ""),",")
		if array_length(VisitedTilesList) > 0
		{
			WorldMap_UpdateVisitedTiles(VisitedTilesList)
		}
		ini_close()
		
		global.FadeProgress = 0;
		HasPressedPlay = true
	}
	else
	{
		InputName = ""
		global.FadeSpeed = 16;
		global.FadeProgress = 0;
		IsFading = true;
		NextPage = Menu_Page.NameInput
	}
}