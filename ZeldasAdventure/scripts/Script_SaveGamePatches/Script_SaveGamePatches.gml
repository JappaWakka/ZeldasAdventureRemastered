function SaveGamePatches()
{
	//Version 0.1.0 - Add a heart + 2 power + 2 defense for defeating the Shrine of Earth
	//				  as long as the player didn't cheat.
	//				  Also replace the string based registers with the index based ones
	//				  and fix broken initial Aspect Ratio value.
	if global.SaveLastUpdatedAtVersion < 0.10
	{
		if global.AspectRatio = 1
		{
			global.AspectRatio = 0
		}
		
		if Item_FindIndex(CelestialSigns.Earth,2) <> -1 and
		global.MaxHealth = 60 and global.Power = 30 and global.Defense = 30
		{
			FillHP(false,true)
			IncreaseMaxHealth()
			IncreaseDefenseAndPower()
		}
				
		ini_open(global.SaveDataFileName)
		ds_list_clear(global.Register)
		var Section = "Save" + string(global.CurrentSaveGame)
		var RegisterList = string_split(ini_read_string(Section, "Register", ""),",")
		if array_length(RegisterList) > 0
		{
			for (var i = 0; i <= array_length(RegisterList) - 1; i++)
			{
				if RegisterList[i] != ""
				{
					var ReplaceEntry = ""
					switch RegisterList[i]
					{
						case "Shurmak_Introduction":			ReplaceEntry = Registers.Shurmak_Introduction; break;
						case "Shurmak_DoNotBeHasty":			ReplaceEntry = Registers.Shurmak_DoNotBeHasty; break;
						case "Shurmak_DoNotRoam":				ReplaceEntry = Registers.Shurmak_DoNotRoam; break;
						case "PaidBeggarWoman":					ReplaceEntry = Registers.BeggarWoman_Paid; break;
						case "DefeatedSoldier":					ReplaceEntry = Registers.DefeatedSoldier; break;
						case "GlebbNoLongerThirsty":			ReplaceEntry = Registers.GlebbTheThirsty_NoLongerThirsty; break;
						case "WomanAtTable":					ReplaceEntry = Registers.WomanAtTable; break;
						case "Enid_Done":						ReplaceEntry = Registers.Enid_StolenHeart; break;
						case "Enid_HitWithSpell":				ReplaceEntry = Registers.Enid_HitWithSpell; break;
						case "BlueSardak_Outro":				ReplaceEntry = Registers.BlueSardak_Outro; break;
						case "BlueSardakDefeated":				ReplaceEntry = Registers.BlueSardak_Defeated; break;
						case "LlortDefeated":					ReplaceEntry = Registers.Llort_Defeated; break;
						case "PlacedLadder":					ReplaceEntry = Registers.Ladder_Placed; break;
						case "RedSardak_Outro":					ReplaceEntry = Registers.RedSardak_Outro; break;
						case "RedSardakDefeated":				ReplaceEntry = Registers.RedSardak_Defeated; break;
						case "YellowSardak_Outro":				ReplaceEntry = Registers.YellowSardak_Outro; break;
						case "YellowSardakDefeated":			ReplaceEntry = Registers.YellowSardak_Defeated; break;
					}
					if ReplaceEntry != ""
					{
						Register_Add(ReplaceEntry)
					}
					else
					{
						Register_Add(RegisterList[i])
					}
				}	
			}
		}
		ini_close()
	}
	
	
	global.SaveLastUpdatedAtVersion = CurrentVersion
}