function InitGameVariables()
{
	
	//System Variables
	global.ColorYellow = [0.9098039215686274,0.9098039215686274,0.06274509803921569,1.0]
	global.ColorRed = [0.9098039215686274,0.06274509803921569,0.06274509803921569,1.0]
	
	global.AddCutItems = true;
	global.CurrentSaveGame = 0;
	global.FadeSpeed = 8;
	global.FadeProgress = 2;
	global.FadeAlpha = 0;
	global.CameraIsPanning = false;
	global.CameraPanSpeed = {x: 12, y: 8};
	global.DesiredRubies = 0;
	global.Languages = {
		English : "en",
		Nederlands : "nl"
	}
	global.Subtitle = "";
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
	
	//Player Variables
	global.Name = "EMPTY";
	global.CurrentMap = "Overworld"; //To determine which map to display in the inventory
	global.CurrentTile = {x: 6, y: 22};
	global.PlayerSpawn = "Spawn_Overworld";
	
	global.CurrentRubies = 0;
	global.CurrentKeys = 0;
	global.Inventory = {Treasure : ds_list_create(), Spells : ds_list_create(), CelestialSigns : ds_list_create()}
	
	global.CurrentHealth = 60;
	global.MaxHealth = 60;
	global.Power = 30;
	global.Defense = 30;
	
	//Option Variables
	global.DebugMode = false;
	global.WindowScale = 3;
	global.Fullscreen = 0;
	global.ShowSubtitles = true;
	global.RemasteredMode = false;
	global.CurrentLanguage = global.Languages.English;
	global.VolumeMaster = 1;
	global.VolumeMusic = 1;
	global.VolumeSoundFX = 1;
		
	//Entity Variables
	#macro PlayerBaseSpeed 1.5
	global.EnemySpeeds =
	{
		Still: 0,
		Slow : d(1),
		Medium : d(1.4),
		Fast: d(1.8)
	};
	
	global.EnemySound = -1;
	
	enum EnemyStates
	{
		Idle,
		Move,
		Attack,
		Damaged
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
	
	//Save File Variables
	global.SavePlayerNames = array_create(3, "EMPTY")
		
	global.SaveDataFileName = "System/SaveData.ini"
}