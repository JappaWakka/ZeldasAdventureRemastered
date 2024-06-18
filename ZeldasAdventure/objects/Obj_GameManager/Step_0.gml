/// Update Delta Time
delta_step()

if room = Room_Overworld
{
	if global.HasSpawned = false
	{
		WarpToLocation(global.PlayerSpawn)
		if global.FadeProgress = 2
		{
			global.HasSpawned = true
			if WorldMap_GetCurrentTileID() != -1
			{
				WorldMap_Add_VisitedTile(global.CurrentTile.x,global.CurrentTile.y)
				global.CurrentMap = WorldMap_GetMapID(WorldMap_GetCurrentTileID())
			}
			else
			{
				global.CurrentMap = Maps.Overworld
			}
		}
	}
	else
	{
		global.PlayerSpawn = global.SpawnPoints[global.CurrentTile.x][global.CurrentTile.y]
		switch global.PlayerSpawn
		{
			case "Spawn_Overworld":
				global.CurrentMap = Maps.Overworld
				break;
			
			case "Spawn_ShrineOfEarth":
			case "Spawn_ShrineOfEarth_Boss":
				global.CurrentMap = Maps.Shrine1
				break;
			
			case "Spawn_ShrineOfIllusion":
			case "Spawn_ShrineOfIllusion_Boss":
				global.CurrentMap = Maps.Shrine2
				break;
			
			case "Spawn_ShrineOfAir":
			case "Spawn_ShrineOfAir_Boss":
				global.CurrentMap = Maps.Shrine3
				break;
			
			case "Spawn_ShrineOfDestiny":
			case "Spawn_ShrineOfDestiny_Boss":
				global.CurrentMap = Maps.Shrine4
				break;
			
			case "Spawn_ShrineOfWater":
			case "Spawn_ShrineOfWater_Boss":
				global.CurrentMap = Maps.Shrine5
				break;
			
			case "Spawn_ShrineOfStrength":
			case "Spawn_ShrineOfStrength_Boss":
				global.CurrentMap = Maps.Shrine6
				break;
			
			case "Spawn_ShrineOfFire":
			case "Spawn_ShrineOfFire_Boss":
				global.CurrentMap = Maps.Shrine7
				break;
			
			case "Spawn_Gauntlet":
				global.CurrentMap = Maps.Gauntlet
				break;
		}
	}
	//Update Alarms

	//Change Ruby amount & Play Ruby sound
	if global.CurrentRubies != global.DesiredRubies
	{
		run_alarms(ChangeRubyAlarms)
	}
	else
	{
		ChangeRubyAlarms[0].restart()
		ChangeRubyAlarms[1].restart()
	}

	//Fill Hearts
	if DoFillHearts = true
	{
		if global.CurrentHealth < global.MaxHealth
		{
			run_alarm(FillHeartsAlarm)
		}
		else
		{
			DoFillHearts = false
			FillHeartsAlarm.restart()
		}
	}

}