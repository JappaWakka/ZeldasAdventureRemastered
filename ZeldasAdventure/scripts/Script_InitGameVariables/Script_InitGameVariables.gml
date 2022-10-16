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
	global.DefeatedEnemyList = array_create(0);
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
	global.CurrentHealth = 60;
	global.MaxHealth = 60;
	global.Power = 1;
	global.Defense = 1;
	global.BaseAttackDamage = 10;
	global.DamagePerHit = 10 / global.Defense;
	global.CurrentLocation = "Overworld"; //To determine which map to display in the inventory
	global.CurrentRubies = 0;
	global.CurrentTile = {x: 6, y: 22};
	global.PlayerSpawn = "Spawn_Overworld";
	
	global.Inventory = {Treasure : array_create(0), Spells : array_create(0), CelestialSigns : array_create(0)}
	
	//Option Variables
	global.DebugMode = true;
	global.WindowScale = 3;
	global.Fullscreen = 0;
	global.NewSoundtrack = false;
	global.ShowSubtitles = true;
	global.RemasteredMode = false;
	global.CurrentLanguage = global.Languages.English;
}