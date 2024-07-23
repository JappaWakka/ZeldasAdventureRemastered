function InitGameVariables()
{
	//Save File Variables
	global.SavePlayerNames = array_create(3,"")
	
	global.SaveDataFileName = "SaveData.ini"
	global.KeyBindingsFileName = "KeyBindings.json"
	GenerateSaveDataFile()
	
	//System Variables
	#macro FrameRate 60
	Init_SpawnPoints_TileMap()
	WorldMap_Tiles_Init()
	global.ColorYellow = [0.9098039215686274,0.9098039215686274,0.06274509803921569,1.0]
	global.ColorRed = [0.9098039215686274,0.06274509803921569,0.06274509803921569,1.0]
	
	global.AddCutItems = false; //Include items that were cut from the original game
	global.CurrentSaveGame = 0;
	global.FadeSpeed = 12;
	global.FadeProgress = 2; //0 = Fade Out, 1 = Fade In, 2 = Finished, 3 = Warp
	global.FadeAlpha = 0;
	global.FadeBeforePan = false;
	global.CameraIsPanning = false;
	global.CameraIsFading = false;
	global.CameraPanSpeed = {x: 12, y: 8};
	global.CandleUsed = false;
	global.DesiredRubies = 0;
	global.Languages = {
		English : "en",
		Nederlands : "nl"
	}
	global.Subtitle = "";
	global.CanUseSpell = true
	global.CurrentItem = [-1,-1]
	global.CurrentTreasure = -1;
	global.CurrentSpell = -1;
	global.InventorySlots_Max = [0,0,0];

	global.InventorySlots_Max[0] = INVENTORY_SLOTS_TREASURE;
	if global.AddCutItems = true
	{
		global.InventorySlots_Max[0] = INVENTORY_SLOTS_TREASURE + INVENTORY_SLOTS_TREASURE_CUT
	}

	global.InventorySlots_Max[1] = INVENTORY_SLOTS_SPELLS
	if global.AddCutItems = true
	{
		global.InventorySlots_Max[1] = INVENTORY_SLOTS_SPELLS + INVENTORY_SLOTS_SPELLS_CUT
	}

	global.InventorySlots_Max[2] = INVENTORY_SLOTS_CELESTIALSIGNS
	
	//Fetch the Save Game names from the Save Data
	for (var i = 0; i <= 2; i++)
	{
		ini_open(global.SaveDataFileName)
		var Section = "Save" + string(i)
		var SaveName = ini_read_string(Section, "Name", "")
		global.SavePlayerNames[i] = SaveName
		ini_close()
	}
	
	//Player Variables
	enum Maps
	{
		Overworld,
		Shrine1,
		Shrine2,
		Shrine3,
		Shrine4,
		Shrine5,
		Shrine6,
		Shrine7,
		Gauntlet
		
	}
	global.Name = "ZELDA";
	global.CurrentMap = Maps.Overworld; //To determine which map to display in the inventory
	global.CurrentTile = {x: 6, y: 22};
	global.PlayerSpawn = "Spawn_Overworld";
	
	global.CurrentRubies = 0;
	global.CurrentKeys = 0;
	global.Inventory = {Treasures : ds_list_create(), Spells : ds_list_create(), CelestialSigns : ds_list_create()}
	global.Register = ds_list_create()
	
	global.CurrentHealth = 60;
	global.MaxHealth = 60;
	global.Power = 30;
	global.Defense = 30;
	global.VisitedTiles = ds_list_create()
	
	//Option Variables
	ini_open(global.SaveDataFileName)
	
	global.DebugMode = bool(ini_read_real("Options", "DebugMode", 0));
	global.WindowScale = ini_read_real("Options", "WindowScale", 3);
	global.Fullscreen = bool(ini_read_real("Options", "Fullscreen", 0));
	global.ShowSubtitles = bool(ini_read_real("Options", "ShowSubtitles", 1));
	global.RemasteredMode = bool(ini_read_real("Options", "RemasteredMode", 0));
	var Language = ini_read_string("Options", "CurrentLanguage", "en");
	switch Language
	{
		case "en" :
			global.CurrentLanguage = global.Languages.English;
			break;
		case "nl" :
			global.CurrentLanguage = global.Languages.Nederlands;
			break;
	}
	global.VolumeMaster = ini_read_real("Options", "VolumeMaster", 1);
	global.VolumeMusic = ini_read_real("Options", "VolumeMusic", 1);
	global.VolumeSoundFX = ini_read_real("Options", "VolumeSoundFX", 1);
	global.VolumeDialogue = ini_read_real("Options", "VolumeDialogue", 1);
	audio_group_set_gain(AudioGroup_Music,global.VolumeMusic * global.VolumeMaster,0);
	audio_group_set_gain(AudioGroup_SoundFX,global.VolumeSoundFX * global.VolumeMaster,0);
	audio_group_set_gain(AudioGroup_Dialogue,global.VolumeDialogue * global.VolumeMaster,0);
	ini_close()
	
	if file_exists(global.KeyBindingsFileName)
	{
		var KeyBindingsJSON = file_text_open_read(global.KeyBindingsFileName)
		input_system_import(file_text_read_string(KeyBindingsJSON))
		file_text_close(KeyBindingsJSON)
	}
	else
	{
		var KeyBindingsJSON = file_text_open_write(global.KeyBindingsFileName)
		file_text_write_string(KeyBindingsJSON,input_system_export())
		file_text_close(KeyBindingsJSON)
	}
	//Entity Variables
	#macro PlayerBaseSpeed 1.5
	#macro PlayerAcceleration_Slippery 0.065
	global.DeathAmountForTrigger = //Amount of Entities to defeat before executing a trigger script
	{
		BoomerangSpell : 1,
		TektiteAmbush : 1,
		UnderworldMapEarthTreasure : 2,
		CompassEarthTreasure : 3
	}
	global.EnemySpeeds =
	{
		Still: 0,
		Slow : 1,
		Medium : 1.4,
		Fast: 1.8
	};
	
	global.ProjectileSpeeds =
	{
		Player : 1.5 + d(0.4),
		Enemy : 1.4 + d(0.4)
	}
	
	global.EnemySound = -1; //The currently playing enemy sound
	
	enum EnemyStates
	{
		Idle,
		Move,
		Attack,
		Damaged
	};
	
	global.KnockbackDistances =
	{
		None: 0,
		Small : 28,
		Large : 52
	};
	
	global.Directions =
	{
		North : 90,
		West : 180,
		South : 270,
		East : 0,	
		NorthEast : 45,
		NorthWest : 135,
		SouthWest : 225,
		SouthEast : 315
	}
	
	enum MapTileType
	{
		Regular,
		Large,
		SignRoom
	};
	
}