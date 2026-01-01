// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ExitMenu_SaveAndQuit()
{
	ini_open(global.SaveDataFileName)
	var Section = "Save" + string(global.CurrentSaveGame)
	if !ds_list_empty(global.Inventory.CelestialSigns)
	{
		var SaveString = ""
		var size = ds_list_size(global.Inventory.CelestialSigns);
		for (var i = 0; i < size; i++)
		{
			if SaveString = ""
			{
				SaveString = SaveString + string(Item_FindValue(i,2))
			}
			else
			{
				SaveString = SaveString + "," + string(Item_FindValue(i,2))
			}
		}
	    ini_write_string(Section, "InventoryCelestialSigns", SaveString);
	}
	if !ds_list_empty(global.Inventory.Spells)
	{
		var SaveString = ""
		var size = ds_list_size(global.Inventory.Spells);
		for (var i = 0; i < size; i++)
		{
			if SaveString = ""
			{
				SaveString = SaveString + string(Item_FindValue(i,1))
			}
			else
			{
				SaveString = SaveString + "," + string(Item_FindValue(i,1))
			}
		}
		ini_write_string(Section, "InventorySpells", SaveString);
	}
	if !ds_list_empty(global.Inventory.Treasures)
	{
		var SaveString = ""
		var size = ds_list_size(global.Inventory.Treasures);
		for (var i = 0; i < size; i++)
		{
			if SaveString = ""
			{
				SaveString = SaveString + string(Item_FindValue(i,0))
			}
			else
			{
				SaveString = SaveString + "," + string(Item_FindValue(i,0))
			}
		}
		ini_write_string(Section, "InventoryTreasures", SaveString);
	}
	if !ds_list_empty(global.VisitedTiles)
	{
		var SaveString = ""
		var size = ds_list_size(global.VisitedTiles);
		for (var i = 0; i < size; i++)
		{
			if SaveString = ""
			{
				SaveString = SaveString + string(ds_list_find_value(global.VisitedTiles,i))
			}
			else
			{
				SaveString = SaveString + "," + string(ds_list_find_value(global.VisitedTiles,i))
			}
		}
		ini_write_string(Section, "VisitedTiles", SaveString);
	}
	if !ds_list_empty(global.Register)
	{
		var SaveString = ""
		var size = ds_list_size(global.Register);
		for (var i = 0; i < size; i++)
		{
			if SaveString = ""
			{
				SaveString = SaveString + string(Register_FindValue(i))
			}
			else
			{
				SaveString = SaveString + "," + string(Register_FindValue(i))
			}
		}
		ini_write_string(Section, "Register", SaveString);
	}
	ini_write_real(Section, "CurrentKeys", global.CurrentKeys);
	ini_write_real(Section, "CurrentRubies", global.CurrentRubies);
	if global.RemasteredMode = false
	{
		if global.CurrentItem[0] = 0
		{
			ini_write_real(Section, "CurrentTreasure", global.CurrentItem[1]);
			ini_write_real(Section, "CurrentSpell", -1);
		}
		else
		{
			ini_write_real(Section, "CurrentTreasure", -1);
			ini_write_real(Section, "CurrentSpell", global.CurrentItem[1]);
		}
	}
	else
	{
		ini_write_real(Section, "CurrentTreasure", global.CurrentTreasure);
		ini_write_real(Section, "CurrentSpell", global.CurrentSpell);
	}
	ini_write_string(Section, "PlayerSpawn", global.PlayerSpawn);
	ini_write_real(Section, "Defense", global.Defense);
	ini_write_real(Section, "Power", global.Power);
	ini_write_real(Section, "MaxHealth", global.MaxHealth);
	ini_write_real(Section, "CurrentHealth", global.MaxHealth);
	ini_write_string(Section, "Name", global.Name);
	
	ini_close()
	
	Audio_StopMusic()
	QuitToMainMenu = true;
	global.CameraIsFading = true;
	global.FadeSpeed = 16;
	global.FadeProgress = 0;
}