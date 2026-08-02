function SaveGamePatches()
{
	//Version 0.1.0 - Add a heart + 2 power + 2 defense for defeating the Shrine of Earth
	//				  as long as the player didn't cheat or use debug mode. 
	if global.SaveCreatedAtVersion < 0.10
	{
		if global.DebugMode = false and
		Item_FindIndex(CelestialSigns.Earth,2) = true and
		global.Power = 30 and global.Defense = 30
		{
			FillHP(false,true)
			IncreaseMaxHealth()
			IncreaseDefenseAndPower()
		}
	}
}