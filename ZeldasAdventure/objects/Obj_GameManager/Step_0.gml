/// Update Delta Time
delta_step()

if room = Room_Overworld
{
	if global.HasSpawned = false
	{
		WarpToLocation(global.PlayerSpawn)
		if global.FadeProgress = 2 {global.HasSpawned = true}
	}
	else
	{
		global.PlayerSpawn = global.SpawnPoints[global.CurrentTile.x][global.CurrentTile.y]
		switch global.PlayerSpawn
		{
			case "Spawn_Overworld":
				global.CurrentMap = Maps.Overworld
				break;
			
			case "Spawn_Shrine1":
			case "Spawn_Shrine1_Boss":
				global.CurrentMap = Maps.Shrine1
				break;
			
			case "Spawn_Shrine2":
			case "Spawn_Shrine2_Boss":
				global.CurrentMap = Maps.Shrine2
				break;
			
			case "Spawn_Shrin3":
			case "Spawn_Shrine3_Boss":
				global.CurrentMap = Maps.Shrine3
				break;
			
			case "Spawn_Shrine4":
			case "Spawn_Shrine4_Boss":
				global.CurrentMap = Maps.Shrine4
				break;
			
			case "Spawn_Shrine5":
			case "Spawn_Shrine5_Boss":
				global.CurrentMap = Maps.Shrine5
				break;
			
			case "Spawn_Shrine6":
			case "Spawn_Shrine6_Boss":
				global.CurrentMap = Maps.Shrine6
				break;
			
			case "Spawn_Shrine7":
			case "Spawn_Shrine7_Boss":
				global.CurrentMap = Maps.Shrine7
				break;
			
			case "Spawn_Gauntlet":
				global.CurrentMap = Maps.Gauntlet
				break;
		}
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