// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame_Play(){
	ini_open(global.SaveDataFileName)
	
	var Section = "Save" + string(global.CurrentSaveGame)
	global.Name = ini_read_string(Section,"Name","EMPTY");
	global.CurrentMap = ini_read_string(Section, "CurrentMap", "Overworld"); //To determine which map to display in the inventory
	global.CurrentTile = {x: ini_read_real(Section, "CurrentTileX", 6), y: ini_read_real(Section, "CurrentTileY", 22)};
	global.PlayerSpawn = ini_read_string(Section, "PlayerSpawn", "Spawn_Overworld");
	
	global.CurrentRubies = ini_read_real(Section, "CurrentRubies", 0);
	global.CurrentKeys = ini_read_real(Section, "CurrentKeys", 0);
	global.Inventory = {Treasure : ds_list_create(), Spells : ds_list_create(), CelestialSigns : ds_list_create()}
	
	var InventoryTreasuresList = string_split(ini_read_string(Section, "InventoryTreasures", ""),",")
	for (var i = 0; i <= array_length(InventoryTreasuresList) - 1; i++)
	{
		if InventoryTreasuresList[i] != ""
		{
			Item_Add(real(InventoryTreasuresList[i]),0)
		}
	}
	var InventorySpellsList = string_split(ini_read_string(Section, "InventorySpells", ""),",")
	for (var i = 0; i <= array_length(InventorySpellsList) - 1; i++)
	{
		if InventorySpellsList[i] != ""
		{
			Item_Add(real(InventorySpellsList[i]),1)
		}	
	}	
	var InventoryCelestialSignsList = string_split(ini_read_string(Section, "InventoryCelestialSigns", ""),",")
	for (var i = 0; i <= array_length(InventorySpellsList) - 1; i++)
	{
		if InventoryCelestialSignsList[i] != ""
		{
			Item_Add(real(InventoryCelestialSignsList[i]),2)
		}	
	}	
	global.CurrentHealth = ini_read_real(Section, "CurrentHealth", 60);
	global.MaxHealth = ini_read_real(Section, "MaxHealth", 60);
	global.Power = ini_read_real(Section, "Power", 30);
	global.Defense = ini_read_real(Section, "Defense", 30);
	ini_close()
	
	global.FadeProgress = 0;
	room_goto(Room_Overworld);
}