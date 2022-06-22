function InitGameVariables()
{
	//System Variables
	global.CurrentSaveGame = 0;
	global.FadeSpeed = 8;
	global.FadeProgress = 2;
	global.FadeAlpha = 0;
	global.CameraIsPanning = false;
	global.CameraPanSpeed = {x: 12, y: 8};
	global.DefeatedEnemyList = array_create(0);
	global.DesiredRubies = 0;
	global.Languages = {
		English : "en",
		Nederlands : "nl"
	}
	global.Subtitle = "";
	global.CurrentTreasure = -1;
	global.CurrentSpell = -1;
	
	//Player Variables
	global.Name = "EMPTY";
	global.CurrentHealth = 60;
	global.MaxHealth = 60;
	global.Power = 1;
	global.Defense = 1;
	global.DamagePerHit = 10 / global.Defense;
	global.CurrentLocation = "Overworld"; //To determine which map to display in the inventory
	global.CurrentRubies = 0;
	global.CurrentTile = {x: 6, y: 22};
	global.PlayerSpawn = "Spawn_Overworld";
			
	
	global.CelestialSigns =
	{
		Earth : {Owned : false},
		Illusion : {Owned : false},
		Air : {Owned : false},
		Destiny : {Owned : false},
		Water : {Owned : false},
		Strength : {Owned : false},
		Fire : {Owned : false},
	}

	//Option Variables
	global.DebugMode = true;
	global.WindowScale = 3;
	global.Fullscreen = 0;
	global.NewSoundtrack = false;
	global.ShowSubtitles = true;
	global.CurrentLanguage = global.Languages.English;
}