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
	global.CurrentTreasure = Treasure.Nothing;
	global.CurrentSpell = Spell.Nothing;
	
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
	global.Inventory_Spell =
	{
		Wand : {Item : Spell.Wand, Owned : false},
		Bow : {Item : Spell.Bow, Owned : false},
		Broadsword : {Item : Spell.Broadsword, Owned : false},
		Calm : {Item : Spell.Calm, Owned : false},
		Feather : {Item : Spell.Feather, Owned : false},
		RingsOfFire : {Item : Spell.RingsOfFire, Owned : false},
		Firestorm : {Item : Spell.Firestorm, Owned : false},
		GoldNecklace : {Item : Spell.GoldNecklace, Owned : false},
		Hammer : {Item : Spell.Hammer, Owned : false},
		JadeAmulet : {Item : Spell.JadeAmulet, Owned : false},
		Joust : {Item : Spell.Joust, Owned : false},
		JadeRing : {Item : Spell.JadeRing, Owned : false},
		Dagger : {Item : Spell.Dagger, Owned : false},
		Noise : {Item : Spell.Noise, Owned : false},
		Pyros : {Item : Spell.Pyros, Owned : false},
		RoarStick : {Item : Spell.RoarStick, Owned : false},
		ShortAxe : {Item : Spell.ShortAxe, Owned : false},
		SapphireRing : {Item : Spell.SapphireRing, Owned : false},
		Boomerang :  {Item : Spell.Boomerang, Owned : false}
	};
	
	global.Inventory_Treasure =
	{
		Flowers : {Item: Treasure.Flowers, Owned: false},
		Ticket1 : {Item: Treasure.Ticket1, Owned: false},
		Candle : {Item: Treasure.Candle, Owned: false},
		Compass_Earth : {Item: Treasure.Compass_Earth, Owned: false},
		Compass_Illusion : {Item: Treasure.Compass_Illusion, Owned: false},
		Compass_Air : {Item: Treasure.Compass_Air, Owned: false},
		Compass_Destiny : {Item: Treasure.Compass_Destiny, Owned: false},
		Compass_Water : {Item: Treasure.Compass_Water, Owned: false},
		Compass_Strength : {Item: Treasure.Compass_Strength, Owned: false},
		Compass_Fire : {Item: Treasure.Compass_Fire, Owned: false},
		Diamond : {Item: Treasure.Diamond, Owned: false},
		Flute : {Item: Treasure.Flute, Owned: false},
		Knife : {Item: Treasure.Knife, Owned: false},
		Harp : {Item: Treasure.Harp, Owned: false},
		Ticket2 : {Item: Treasure.Ticket2, Owned: false},
		Potion : {Item: Treasure.Potion, Owned: false},
		UnderworldMap_Earth : {Item: Treasure.UnderworldMap_Earth, Owned: false},
		UnderworldMap_Illusion : {Item: Treasure.UnderworldMap_Illusion, Owned: false},
		UnderworldMap_Air : {Item: Treasure.UnderworldMap_Air, Owned: false},
		UnderworldMap_Destiny : {Item: Treasure.UnderworldMap_Destiny, Owned: false},
		UnderworldMap_Water : {Item: Treasure.UnderworldMap_Water, Owned: false},
		UnderworldMap_Strength : {Item: Treasure.UnderworldMap_Strength, Owned: false},
		UnderworldMap_Fire : {Item: Treasure.UnderworldMap_Fire, Owned: false},
		Carpet : {Item: Treasure.Carpet, Owned: false},
		Shield : {Item: Treasure.Shield, Owned: false},
		Bell : {Item: Treasure.Bell, Owned: false},
		Raft : {Item: Treasure.Raft, Owned: false},
		RedBoots : {Item: Treasure.RedBoots, Owned: false},
		Repellant : {Item: Treasure.Repellant, Owned: false},
		RedRibbon : {Item: Treasure.RedRibbon, Owned: false},
		Rubies : {Item: Treasure.Rubies, Owned: false},
		VialOfWind : {Item: Treasure.VialOfWind, Owned: false},
		YellowBoots : {Item: Treasure.YellowBoots, Owned: false},
		Ladder : {Item: Treasure.Ladder, Owned: false},
		Bone : {Item: Treasure.Bone, Owned: false},
		BlackOrb : {Item: Treasure.BlackOrb, Owned: false},
		Plank : {Item: Treasure.Plank, Owned: false},
		Coal : {Item: Treasure.Coal, Owned: false},
		Pitcher_Empty : {Item: Treasure.Pitcher_Empty, Owned: false},
		Pitcher_Full : {Item: Treasure.Pitcher_Full, Owned: false}
	};
		
	if global.CurrentRubies == 0
	{
		global.Inventory_Treasure.Rubies.Owned = false
	}
	
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