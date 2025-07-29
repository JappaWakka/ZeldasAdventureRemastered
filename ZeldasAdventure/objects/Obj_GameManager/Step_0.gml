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
	if global.CompassWarp != ""
	{
		WarpToLocation(global.CompassWarp)
	}
	if global.StartCutscene != ""
	{
		if global.FadeProgress = 1
		{
			switch global.StartCutscene
			{
				case "Shrine_Earth":
					Audio_StopMusic()
					room_goto(Room_Cutscene_Shrine_Earth);
					break;
			}
		}
	}
	
	if EnemySound = -1 and global.EnemySoundPlaying = false
	{
		if global.EnemySound[0] != -1 and global.EnemySound[1] != -1
		{
			EnemySound = audio_play_sound_relative(global.EnemySound[0],1000,false,global.EnemySound[1])
			global.EnemySoundPlaying = true
			global.EnemySound = [-1,-1]
		}
	}
	//Allow other sounds to play
	if EnemySound <> -1
	{
		if audio_is_playing(EnemySound) = false
		{
			EnemySound = -1
			global.EnemySoundPlaying = false
		}
	}
	else
	{
		global.EnemySoundPlaying = false
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
			run_alarms(FillHeartsAlarms)
		}
		else
		{
			DoFillHearts = false
			FillHeartsAlarms[0].restart()
			FillHeartsAlarms[1].restart()
		}
	}

}