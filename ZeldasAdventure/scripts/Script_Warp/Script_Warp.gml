function WarpTo(TileX, TileY, PlayerX = -1, PlayerY = -1, PlayerFacing = -1, FadeSpeed = 12)
{
	if global.FadeProgress = 3
	{
		if audio_is_playing(global.CurrentDialogue_ID)
		{
			audio_stop_sound(global.CurrentDialogue_ID)
			global.Subtitle = ""
		}
		global.FadeProgress = 0;
		global.FadeSpeed = FadeSpeed;
		global.CameraIsPanning = true;
		return false;
	}
	
	if global.FadeProgress = 1
	{
		var DestinationX = PlayerX
		if PlayerX = -1
		{
			DestinationX = Entity_Collision_Player.x
		}
		var DestinationY = PlayerY
		if PlayerY = -1
		{
			DestinationY = Entity_Collision_Player.y
		}
		instance_destroy(Entity_Pickup_ItemDrops_All)
		instance_destroy(Entity_Pickup_ItemDrops_CanBe5Rubies)
		instance_destroy(Entity_Pickup_ItemDrops_GuaranteedHeart)
		var PrevousTileX = global.CurrentTile.x
		var PrevousTileY = global.CurrentTile.y
		
		global.FadeSpeed = FadeSpeed;
		Entity_Collision_Player.x = TileX * tileWidth + DestinationX;
		Entity_Collision_Player.y = TileY * tileHeight + DestinationY;
		global.CurrentTile.x = TileX;
		global.CurrentTile.y = TileY;
		if WorldMap_GetCurrentTileID() != -1
		{
			WorldMap_Add_VisitedTile(global.CurrentTile.x,global.CurrentTile.y)
			global.CurrentMap = WorldMap_GetMapID(WorldMap_GetCurrentTileID())
			if instance_exists(Obj_WorldMapManager)
			{
				Obj_WorldMapManager.BackgroundIndex = -1
			}
		}
		else
		{
			global.CurrentMap = Maps.Overworld
			if instance_exists(Obj_WorldMapManager)
			{
				Obj_WorldMapManager.BackgroundIndex = -1
			}
		}
		camera_set_view_pos(view,global.CurrentTile.x * tileWidth,global.CurrentTile.y * tileHeight);
		instance_deactivate_region(PrevousTileX * tileWidth, PrevousTileY * tileHeight, tileWidth, tileHeight,true,true)
		instance_activate_layer("CandleDarkness")
		instance_activate_region(TileX * tileWidth, TileY * tileHeight, tileWidth, tileHeight, true)
		instance_activate_object(Entity_Parent_Player)
		
		if PlayerFacing != -1
		{
			if instance_exists(Entity_Player) = true
			{
				Entity_Player.Facing = PlayerFacing
			}
		}
		global.SwitchTracks = true;
				
		global.CameraIsPanning = false;
		
		return true;
	}
	if global.FadeProgress = 2
	{
		if instance_exists(SlipperyFloor) = true
		{
			Entity_Collision_Player.Acceleration = PlayerAcceleration_Slippery
		}
		else
		{
			Entity_Collision_Player.Acceleration = PlayerBaseSpeed * Entity_Collision_Player.SpeedMultiplier
		}
		with Obj_GameManager
		{
			if global.RemasteredMode = true
			{
				global.EnemyCannotTouchEdge = true
				alarm_set(0,75)
			}
		}
		if instance_exists(Entity_Parent_Enemy_Path) = true
		{
			with Entity_Parent_Enemy_Path
			{
				var CoordinateIndex = floor(FrameIndex / 4)
				if CurrentPath[CoordinateIndex][2] = "wait"
				{
					var randomDelay = round(random_range(CurrentPath[CoordinateIndex][3],CurrentPath[CoordinateIndex][4]))
					
					image_speed = 0
					CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
					CanContinue = false
					EnemyState = EnemyStates.Idle
					FrameIndex = 4
					if randomDelay = 0
					{
						alarm_set(0,4)
					}
					else
					{
						alarm_set(0, randomDelay);
					}
				}
				else
				{
					alarm_set(0, 1);
				}
			}
		}
		if instance_exists(Entity_Parent_NPC_Path) = true
		{
			with Entity_Parent_NPC_Path
			{
				var CoordinateIndex = floor(FrameIndex / 4)
				if CurrentPath[CoordinateIndex][2] = "wait"
				{
					var randomDelay = round(random_range(CurrentPath[CoordinateIndex][3],CurrentPath[CoordinateIndex][4]))
					
					image_speed = 0
					CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
					CanContinue = false
					EnemyState = NPCStates.Idle
					FrameIndex = 4
					if randomDelay = 0
					{
						alarm_set(1,4)
					}
					else
					{
						alarm_set(1, randomDelay);
					}
				}
				else
				{
					alarm_set(1, 1);
				}
			}
		}
		if global.CompassWarp != ""
		{
			global.CompassWarp = ""
		}
		if global.HarpWarp != ""
		{
			global.HarpWarp = ""
		}
	}
}

global.WarpLocations =
{
	//Vision Henge
	VisionHenge_Spawn : {TileX:6,TileY:22,PlayerX:192,PlayerY:128,PlayerFacing: global.Directions.South},
	
	//Plain Of Andor
	PlainOfAndor_MobilinsHeadInn_Inside : {TileX:10,TileY:21,PlayerX:64,PlayerY:148,PlayerFacing: global.Directions.East},
	PlainOfAndor_MobilinsHeadInn_Outside : {TileX:9,TileY:21,PlayerX:120,PlayerY:176,PlayerFacing: global.Directions.South},

	//Forest of Ogham
	ForestOfOgham_TektiteCave_Inside : {TileX:7,TileY:31,PlayerX:38,PlayerY:128,PlayerFacing: global.Directions.East},
	ForestOfOgham_TektiteCave_Outside : {TileX:6,TileY:31,PlayerX:300,PlayerY:162,PlayerFacing: global.Directions.South},
	ForestOfOgham_ShrineOfEarth_Exit : {TileX:6,TileY:31,PlayerX:266,PlayerY:74,PlayerFacing: global.Directions.South},
	ForestOfOgham_ShrineOfEarth_Warp : {TileX:6,TileY:31,PlayerX:112,PlayerY:172,PlayerFacing: global.Directions.South},
		
	//GreatWimbich
	GreatWimbich_GeneralStore_Inside : {TileX:7,TileY:11,PlayerX:204,PlayerY:200,PlayerFacing: global.Directions.North},
	GreatWimbich_GeneralStore_Outside : {TileX:10,TileY:12,PlayerX:62,PlayerY:160,PlayerFacing: global.Directions.South},
	GreatWimbich_MagicStore_Inside : {TileX:8,TileY:11,PlayerX:124,PlayerY:200,PlayerFacing: global.Directions.North},
	GreatWimbich_MagicStore_Outside : {TileX:10,TileY:12,PlayerX:276,PlayerY:160,PlayerFacing: global.Directions.South},
	GreatWimbich_Blacksmith_Inside : {TileX:9,TileY:11,PlayerX:156,PlayerY:200,PlayerFacing: global.Directions.North},
	GreatWimbich_Blacksmith_Outside : {TileX:11,TileY:12,PlayerX:128,PlayerY:160,PlayerFacing: global.Directions.South},
	GreatWimbich_TwinFatherHouse_Inside : {TileX:9,TileY:12,PlayerX:204,PlayerY:196,PlayerFacing: global.Directions.North},
	GreatWimbich_TwinFatherHouse_Outside : {TileX:11,TileY:13,PlayerX:248,PlayerY:176,PlayerFacing: global.Directions.South},
	
	//Forest of Torian
	ForestOfTorian_WhiteSteedLodge_Inside : {TileX:13,TileY:6,PlayerX:180,PlayerY:208,PlayerFacing: global.Directions.North},
	ForestOfTorian_WhiteSteedLodge_Outside : {TileX:13,TileY:10,PlayerX:258,PlayerY:124,PlayerFacing: global.Directions.South},
	ForestOfTorian_TreeTrunkCave_Inside : {TileX:16,TileY:10,PlayerX:268,PlayerY:60,PlayerFacing: global.Directions.South},
	ForestOfTorian_TreeTrunkCave_Outside : {TileX:14,TileY:10,PlayerX:276,PlayerY:124,PlayerFacing: global.Directions.West},
	ForestOfTorian_ShrineOfIllusion_Exit : {TileX:11,TileY:7,PlayerX:176,PlayerY:136,PlayerFacing: global.Directions.South},
	ForestOfTorian_ShrineOfIllusion_Warp : {TileX:11,TileY:7,PlayerX:232,PlayerY:156,PlayerFacing: global.Directions.South},
	
	//Ubato Hills
	UbatoHills_ShrineOfDestiny_Exit : {TileX:18,TileY:4,PlayerX:96,PlayerY:176,PlayerFacing: global.Directions.South},
	
	//Shortcuts
	SeacoastPlainShortcut_Inside_West : {TileX:12,TileY:20,PlayerX:64,PlayerY:144,PlayerFacing: global.Directions.East},
	SeacoastPlainShortcut_Inside_East : {TileX:12,TileY:20,PlayerX:332,PlayerY:112,PlayerFacing: global.Directions.West},
	SeacoastPlainShortcut_Outside_West : {TileX:9,TileY:20,PlayerX:320,PlayerY:124,PlayerFacing: global.Directions.West},
	//SeacoastPlainShortcut_Outside_East : {TileX:14,TileY:21,PlayerX:248,PlayerY:112,PlayerFacing: global.Directions.South}, //working
	SeacoastPlainShortcut_Outside_East : {TileX:12,TileY:20,PlayerX:332,PlayerY:112,PlayerFacing: global.Directions.South}, //not working
	
	GubashaDesertShortcut_Inside_West : {TileX:20,TileY:4,PlayerX:52,PlayerY:116,PlayerFacing: global.Directions.East},
	GubashaDesertShortcut_Inside_East : {TileX:20,TileY:4,PlayerX:336,PlayerY:112,PlayerFacing: global.Directions.West},
	GubashaDesertShortcut_Outside_West : {TileX:19,TileY:5,PlayerX:284,PlayerY:112,PlayerFacing: global.Directions.West},
	//GubashaDesertShortcut_Outside_East : {TileX:21,TileY:4,PlayerX:76,PlayerY:108,PlayerFacing: global.Directions.South}, //working
	GubashaDesertShortcut_Outside_East : {TileX:20,TileY:4,PlayerX:336,PlayerY:112,PlayerFacing: global.Directions.East}, //not working
	
	//Shrines
	ShrineOfEarth_Spawn_Entrance : {TileX:6,TileY:35,PlayerX:106,PlayerY:118,PlayerFacing: global.Directions.South},
	ShrineOfEarth_Spawn_Boss : {TileX:12,TileY:31,PlayerX:87,PlayerY:136,PlayerFacing: global.Directions.East},
	ShrineOfEarth_09_to_11 : {TileX:11,TileY:35,PlayerX:288,PlayerY:208,PlayerFacing: global.Directions.North},
	ShrineOfEarth_11_to_09 : {TileX:11,TileY:38,PlayerX:288,PlayerY:24,PlayerFacing: global.Directions.South},
	ShrineOfEarth_13_to_14 : {TileX:9,TileY:34,PlayerX:360,PlayerY:136,PlayerFacing: global.Directions.West},
	ShrineOfEarth_14_to_13 : {TileX:11,TileY:34,PlayerX:24,PlayerY:136,PlayerFacing: global.Directions.East},
	ShrineOfEarth_20_to_21 : {TileX:12,TileY:30,PlayerX:184,PlayerY:204,PlayerFacing: global.Directions.North},
	ShrineOfEarth_21_to_20 : {TileX:12,TileY:31,PlayerX:184,PlayerY:32,PlayerFacing: global.Directions.South},
	ShrineOfEarth_21_to_22 : {TileX:12,TileY:29,PlayerX:176,PlayerY:208,PlayerFacing: global.Directions.North},
	ShrineOfEarth_22_to_21 : {TileX:12,TileY:30,PlayerX:188,PlayerY:28,PlayerFacing: global.Directions.South},

	ShrineOfIllusion_Spawn_Entrance : {TileX:19,TileY:27,PlayerX:184,PlayerY:204,PlayerFacing: global.Directions.North},
	ShrineOfIllusion_Spawn_Boss : {TileX:27,TileY:20,PlayerX:190,PlayerY:182,PlayerFacing: global.Directions.North},
	
	ShrineOfAir_Spawn_Entrance : {TileX:5,TileY:2,PlayerX:184,PlayerY:128,PlayerFacing: global.Directions.North},
	
	ShrineOfDestiny_Spawn_Entrance : {TileX:26,TileY:24,PlayerX:188,PlayerY:192,PlayerFacing: global.Directions.North},
	
	ShrineOfWater_Spawn_Entrance : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.East},
	
	ShrineOfStrength_Spawn_Entrance : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.South},
	
	ShrineOfFire_Spawn_Entrance : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	
	Gauntlet_Llort : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	Gauntlet_Pasquinade : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	Gauntlet_Avianna : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	Gauntlet_Malmort : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	Gauntlet_Agwanda : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	Gauntlet_Ursore : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	Gauntlet_Warbane : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	Gauntlet_Ganon : {TileX:0,TileY:0,PlayerX:0,PlayerY:0,PlayerFacing: global.Directions.North},
	
}

function WarpToLocation(Name)
{
	switch Name
	{
		//Vision Henge
		case "Spawn_Overworld" :
			WarpTo(
			global.WarpLocations.VisionHenge_Spawn.TileX,
			global.WarpLocations.VisionHenge_Spawn.TileY,
			global.WarpLocations.VisionHenge_Spawn.PlayerX,
			global.WarpLocations.VisionHenge_Spawn.PlayerY,
			global.WarpLocations.VisionHenge_Spawn.PlayerFacing
			)
			break;
		
		//Plain Of Andor
		case "MobilinsHeadInn_Inside":
			WarpTo(
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.TileX,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.TileY,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.PlayerX,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.PlayerY,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.PlayerFacing
			)
			break;
		case "MobilinsHeadInn_Outside":
			WarpTo(
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.TileX,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.TileY,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.PlayerX,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.PlayerY,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.PlayerFacing
			)
			break;
		
		
		//Forest of Ogham
		case "TektiteCave_Inside":
			WarpTo(
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.TileX,
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.TileY,
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.PlayerX,
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.PlayerY,
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.PlayerFacing
			)
			break;
		case "TektiteCave_Outside":
			WarpTo(
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.TileX,
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.TileY,
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.PlayerX,
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.PlayerY,
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.PlayerFacing
			)
			break;
		case "ShrineOfEarth_Outside_Exit":
			WarpTo(
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.TileX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.TileY,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.PlayerX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.PlayerY,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.PlayerFacing
			)
			break;
		case "ShrineOfEarth_Outside_Warp":
			WarpTo(
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.TileX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.TileY,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.PlayerX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.PlayerY,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.PlayerFacing
			)
			break;
			
		
		//Great Wimbich
		case "GeneralStore_Inside":
			WarpTo(
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.TileX,
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.TileY,
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.PlayerX,
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.PlayerY,
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.PlayerFacing
			)
			break;
		case "GeneralStore_Outside":
			WarpTo(
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.TileX,
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.TileY,
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.PlayerX,
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.PlayerY,
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.PlayerFacing
			)
			break;
		case "MagicStore_Inside":
			WarpTo(
			global.WarpLocations.GreatWimbich_MagicStore_Inside.TileX,
			global.WarpLocations.GreatWimbich_MagicStore_Inside.TileY,
			global.WarpLocations.GreatWimbich_MagicStore_Inside.PlayerX,
			global.WarpLocations.GreatWimbich_MagicStore_Inside.PlayerY,
			global.WarpLocations.GreatWimbich_MagicStore_Inside.PlayerFacing
			)
			break;
		case "MagicStore_Outside":
			WarpTo(
			global.WarpLocations.GreatWimbich_MagicStore_Outside.TileX,
			global.WarpLocations.GreatWimbich_MagicStore_Outside.TileY,
			global.WarpLocations.GreatWimbich_MagicStore_Outside.PlayerX,
			global.WarpLocations.GreatWimbich_MagicStore_Outside.PlayerY,
			global.WarpLocations.GreatWimbich_MagicStore_Outside.PlayerFacing
			)
			break;
		case "Blacksmith_Inside":
			WarpTo(
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.TileX,
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.TileY,
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.PlayerX,
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.PlayerY,
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.PlayerFacing
			)
			break;
		case "Blacksmith_Outside":
			WarpTo(
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.TileX,
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.TileY,
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.PlayerX,
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.PlayerY,
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.PlayerFacing
			)
			break;
		case "TwinFatherHouse_Inside":
			WarpTo(
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.TileX,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.TileY,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.PlayerX,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.PlayerY,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.PlayerFacing
			)
			break;
		case "TwinFatherHouse_Outside":
			WarpTo(
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.TileX,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.TileY,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.PlayerX,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.PlayerY,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.PlayerFacing
			)
			break;
			
		//Forest of Torian
		case "WhiteSteedLodge_Inside":
			WarpTo(
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Inside.TileX,
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Inside.TileY,
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Inside.PlayerX,
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Inside.PlayerY,
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Inside.PlayerFacing
			)
			break;
		case "WhiteSteedLodge_Outside":
			WarpTo(
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Outside.TileX,
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Outside.TileY,
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Outside.PlayerX,
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Outside.PlayerY,
			global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Outside.PlayerFacing
			)
			break;
		case "TreeTrunkCave_Inside":
			WarpTo(
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Inside.TileX,
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Inside.TileY,
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Inside.PlayerX,
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Inside.PlayerY,
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Inside.PlayerFacing
			)
			break;
		case "TreeTrunkCave_Outside":
			WarpTo(
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Outside.TileX,
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Outside.TileY,
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Outside.PlayerX,
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Outside.PlayerY,
			global.WarpLocations.ForestOfTorian_TreeTrunkCave_Outside.PlayerFacing
			)
			break;
		case "ShrineOfIllusion_Outside_Exit":
			WarpTo(
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Exit.TileX,
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Exit.TileY,
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Exit.PlayerX,
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Exit.PlayerY,
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Exit.PlayerFacing
			)
			break;
		case "ShrineOfIllusion_Outside_Warp":
			WarpTo(
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Warp.TileX,
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Warp.TileY,
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Warp.PlayerX,
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Warp.PlayerY,
			global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Warp.PlayerFacing
			)
			break;
		
		//Ubato Hills
		case "ShrineOfDestiny_Outside_Exit":
			WarpTo(
			global.WarpLocations.UbatoHills_ShrineOfDestiny_Exit.TileX,
			global.WarpLocations.UbatoHills_ShrineOfDestiny_Exit.TileY,
			global.WarpLocations.UbatoHills_ShrineOfDestiny_Exit.PlayerX,
			global.WarpLocations.UbatoHills_ShrineOfDestiny_Exit.PlayerY,
			global.WarpLocations.UbatoHills_ShrineOfDestiny_Exit.PlayerFacing
			)
			break;
			
		//Shorcuts
		case "SeacoastPlainShortcut_Inside_West":
			WarpTo(
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.TileX,
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.TileY,
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.PlayerX,
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.PlayerY,
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.PlayerFacing
			)
			break;
		case "SeacoastPlainShortcut_Inside_East":
			WarpTo(
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.TileX,
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.TileY,
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.PlayerX,
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.PlayerY,
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.PlayerFacing
			)
			break;
		case "SeacoastPlainShortcut_Outside_West":
			WarpTo(
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.TileX,
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.TileY,
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.PlayerX,
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.PlayerY,
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.PlayerFacing
			)
			break;
		case "SeacoastPlainShortcut_Outside_East":
			WarpTo(
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.TileX,
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.TileY,
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.PlayerX,
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.PlayerY,
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.PlayerFacing
			)
			break;
		case "GubashaDesertShortcut_Inside_West":
			WarpTo(
			global.WarpLocations.GubashaDesertShortcut_Inside_West.TileX,
			global.WarpLocations.GubashaDesertShortcut_Inside_West.TileY,
			global.WarpLocations.GubashaDesertShortcut_Inside_West.PlayerX,
			global.WarpLocations.GubashaDesertShortcut_Inside_West.PlayerY,
			global.WarpLocations.GubashaDesertShortcut_Inside_West.PlayerFacing
			)
			break;
		case "GubashaDesertShortcut_Inside_East":
			WarpTo(
			global.WarpLocations.GubashaDesertShortcut_Inside_East.TileX,
			global.WarpLocations.GubashaDesertShortcut_Inside_East.TileY,
			global.WarpLocations.GubashaDesertShortcut_Inside_East.PlayerX,
			global.WarpLocations.GubashaDesertShortcut_Inside_East.PlayerY,
			global.WarpLocations.GubashaDesertShortcut_Inside_East.PlayerFacing
			)
			break;
		case "GubashaDesertShortcut_Outside_West":
			WarpTo(
			global.WarpLocations.GubashaDesertShortcut_Outside_West.TileX,
			global.WarpLocations.GubashaDesertShortcut_Outside_West.TileY,
			global.WarpLocations.GubashaDesertShortcut_Outside_West.PlayerX,
			global.WarpLocations.GubashaDesertShortcut_Outside_West.PlayerY,
			global.WarpLocations.GubashaDesertShortcut_Outside_West.PlayerFacing
			)
			break;
		case "GubashaDesertShortcut_Outside_East":
			WarpTo(
			global.WarpLocations.GubashaDesertShortcut_Outside_East.TileX,
			global.WarpLocations.GubashaDesertShortcut_Outside_East.TileY,
			global.WarpLocations.GubashaDesertShortcut_Outside_East.PlayerX,
			global.WarpLocations.GubashaDesertShortcut_Outside_East.PlayerY,
			global.WarpLocations.GubashaDesertShortcut_Outside_East.PlayerFacing
			)
			break;
			
		//Shrine of Earth
		case "Spawn_ShrineOfEarth":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.TileX,
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.TileY,
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.PlayerX,
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.PlayerY,
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.PlayerFacing
			)
			break;
		case "Spawn_ShrineOfEarth_Boss":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.TileX,
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.TileY,
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.PlayerX,
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.PlayerY,
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.PlayerFacing
			)
			break;
		case "ShrineOfEarth_09_to_11":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_09_to_11.TileX,
			global.WarpLocations.ShrineOfEarth_09_to_11.TileY,
			global.WarpLocations.ShrineOfEarth_09_to_11.PlayerX,
			global.WarpLocations.ShrineOfEarth_09_to_11.PlayerY,
			global.WarpLocations.ShrineOfEarth_09_to_11.PlayerFacing
			)
			break;
		case "ShrineOfEarth_11_to_09":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_11_to_09.TileX,
			global.WarpLocations.ShrineOfEarth_11_to_09.TileY,
			global.WarpLocations.ShrineOfEarth_11_to_09.PlayerX,
			global.WarpLocations.ShrineOfEarth_11_to_09.PlayerY,
			global.WarpLocations.ShrineOfEarth_11_to_09.PlayerFacing
			)
			break;
		case "ShrineOfEarth_13_to_14":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_13_to_14.TileX,
			global.WarpLocations.ShrineOfEarth_13_to_14.TileY,
			global.WarpLocations.ShrineOfEarth_13_to_14.PlayerX,
			global.WarpLocations.ShrineOfEarth_13_to_14.PlayerY,
			global.WarpLocations.ShrineOfEarth_13_to_14.PlayerFacing
			)
			break;
		case "ShrineOfEarth_14_to_13":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_14_to_13.TileX,
			global.WarpLocations.ShrineOfEarth_14_to_13.TileY,
			global.WarpLocations.ShrineOfEarth_14_to_13.PlayerX,
			global.WarpLocations.ShrineOfEarth_14_to_13.PlayerY,
			global.WarpLocations.ShrineOfEarth_14_to_13.PlayerFacing
			)
			break;
		case "ShrineOfEarth_20_to_21":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_20_to_21.TileX,
			global.WarpLocations.ShrineOfEarth_20_to_21.TileY,
			global.WarpLocations.ShrineOfEarth_20_to_21.PlayerX,
			global.WarpLocations.ShrineOfEarth_20_to_21.PlayerY,
			global.WarpLocations.ShrineOfEarth_20_to_21.PlayerFacing
			)
			break;
		case "ShrineOfEarth_21_to_20":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_21_to_20.TileX,
			global.WarpLocations.ShrineOfEarth_21_to_20.TileY,
			global.WarpLocations.ShrineOfEarth_21_to_20.PlayerX,
			global.WarpLocations.ShrineOfEarth_21_to_20.PlayerY,
			global.WarpLocations.ShrineOfEarth_21_to_20.PlayerFacing
			)
			break;
		case "ShrineOfEarth_21_to_22":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_21_to_22.TileX,
			global.WarpLocations.ShrineOfEarth_21_to_22.TileY,
			global.WarpLocations.ShrineOfEarth_21_to_22.PlayerX,
			global.WarpLocations.ShrineOfEarth_21_to_22.PlayerY,
			global.WarpLocations.ShrineOfEarth_21_to_22.PlayerFacing
			)
			break;
		case "ShrineOfEarth_22_to_21":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_22_to_21.TileX,
			global.WarpLocations.ShrineOfEarth_22_to_21.TileY,
			global.WarpLocations.ShrineOfEarth_22_to_21.PlayerX,
			global.WarpLocations.ShrineOfEarth_22_to_21.PlayerY,
			global.WarpLocations.ShrineOfEarth_22_to_21.PlayerFacing
			)
			break;
		
			
		//Shrine of Illusion
		case "Spawn_ShrineOfIllusion":
			WarpTo(
			global.WarpLocations.ShrineOfIllusion_Spawn_Entrance.TileX,
			global.WarpLocations.ShrineOfIllusion_Spawn_Entrance.TileY,
			global.WarpLocations.ShrineOfIllusion_Spawn_Entrance.PlayerX,
			global.WarpLocations.ShrineOfIllusion_Spawn_Entrance.PlayerY,
			global.WarpLocations.ShrineOfIllusion_Spawn_Entrance.PlayerFacing
			)
			break;
		case "Spawn_ShrineOfIllusion_Boss":
			WarpTo(
			global.WarpLocations.ShrineOfIllusion_Spawn_Boss.TileX,
			global.WarpLocations.ShrineOfIllusion_Spawn_Boss.TileY,
			global.WarpLocations.ShrineOfIllusion_Spawn_Boss.PlayerX,
			global.WarpLocations.ShrineOfIllusion_Spawn_Boss.PlayerY,
			global.WarpLocations.ShrineOfIllusion_Spawn_Boss.PlayerFacing
			)
			break;
			
		//Shrine of Air
		case "Spawn_ShrineOfAir":
			WarpTo(
			global.WarpLocations.ShrineOfAir_Spawn_Entrance.TileX,
			global.WarpLocations.ShrineOfAir_Spawn_Entrance.TileY,
			global.WarpLocations.ShrineOfAir_Spawn_Entrance.PlayerX,
			global.WarpLocations.ShrineOfAir_Spawn_Entrance.PlayerY,
			global.WarpLocations.ShrineOfAir_Spawn_Entrance.PlayerFacing
			)
			break;
			
		//Shrine of Destiny
		case "Spawn_ShrineOfDestiny":
			WarpTo(
			global.WarpLocations.ShrineOfDestiny_Spawn_Entrance.TileX,
			global.WarpLocations.ShrineOfDestiny_Spawn_Entrance.TileY,
			global.WarpLocations.ShrineOfDestiny_Spawn_Entrance.PlayerX,
			global.WarpLocations.ShrineOfDestiny_Spawn_Entrance.PlayerY,
			global.WarpLocations.ShrineOfDestiny_Spawn_Entrance.PlayerFacing
			)
			break;
			
		//Shrine of Water
		case "Spawn_ShrineOfWater":
			WarpTo(
			global.WarpLocations.ShrineOfWater_Spawn_Entrance.TileX,
			global.WarpLocations.ShrineOfWater_Spawn_Entrance.TileY,
			global.WarpLocations.ShrineOfWater_Spawn_Entrance.PlayerX,
			global.WarpLocations.ShrineOfWater_Spawn_Entrance.PlayerY,
			global.WarpLocations.ShrineOfWater_Spawn_Entrance.PlayerFacing
			)
			break;
			
		//Shrine of Strength
		case "Spawn_ShrineOfStrength":
			WarpTo(
			global.WarpLocations.ShrineOfStrength_Spawn_Entrance.TileX,
			global.WarpLocations.ShrineOfStrength_Spawn_Entrance.TileY,
			global.WarpLocations.ShrineOfStrength_Spawn_Entrance.PlayerX,
			global.WarpLocations.ShrineOfStrength_Spawn_Entrance.PlayerY,
			global.WarpLocations.ShrineOfStrength_Spawn_Entrance.PlayerFacing
			)
			break;
			
		//Shrine of Fire
		case "Spawn_ShrineOfFire":
			WarpTo(
			global.WarpLocations.ShrineOfFire_Spawn_Entrance.TileX,
			global.WarpLocations.ShrineOfFire_Spawn_Entrance.TileY,
			global.WarpLocations.ShrineOfFire_Spawn_Entrance.PlayerX,
			global.WarpLocations.ShrineOfFire_Spawn_Entrance.PlayerY,
			global.WarpLocations.ShrineOfFire_Spawn_Entrance.PlayerFacing
			)
			break;
				
		//Gauntlet
		case "Gauntlet_Llort":
			WarpTo(
			global.WarpLocations.Gauntlet_Llort.TileX,
			global.WarpLocations.Gauntlet_Llort.TileY,
			global.WarpLocations.Gauntlet_Llort.PlayerX,
			global.WarpLocations.Gauntlet_Llort.PlayerY,
			global.WarpLocations.Gauntlet_Llort.PlayerFacing
			)
			break;
			
		case "Gauntlet_Pasquinade":
			WarpTo(
			global.WarpLocations.Gauntlet_Pasquinade.TileX,
			global.WarpLocations.Gauntlet_Pasquinade.TileY,
			global.WarpLocations.Gauntlet_Pasquinade.PlayerX,
			global.WarpLocations.Gauntlet_Pasquinade.PlayerY,
			global.WarpLocations.Gauntlet_Pasquinade.PlayerFacing
			)
			break;
			
		case "Gauntlet_Avianna":
			WarpTo(
			global.WarpLocations.Gauntlet_Avianna.TileX,
			global.WarpLocations.Gauntlet_Avianna.TileY,
			global.WarpLocations.Gauntlet_Avianna.PlayerX,
			global.WarpLocations.Gauntlet_Avianna.PlayerY,
			global.WarpLocations.Gauntlet_Avianna.PlayerFacing
			)
			break;
			
		case "Gauntlet_Malmort":
			WarpTo(
			global.WarpLocations.Gauntlet_Malmort.TileX,
			global.WarpLocations.Gauntlet_Malmort.TileY,
			global.WarpLocations.Gauntlet_Malmort.PlayerX,
			global.WarpLocations.Gauntlet_Malmort.PlayerY,
			global.WarpLocations.Gauntlet_Malmort.PlayerFacing
			)
			break;
			
		case "Gauntlet_Agwanda":
			WarpTo(
			global.WarpLocations.Gauntlet_Agwanda.TileX,
			global.WarpLocations.Gauntlet_Agwanda.TileY,
			global.WarpLocations.Gauntlet_Agwanda.PlayerX,
			global.WarpLocations.Gauntlet_Agwanda.PlayerY,
			global.WarpLocations.Gauntlet_Agwanda.PlayerFacing
			)
			break;
			
		case "Gauntlet_Ursore":
			WarpTo(
			global.WarpLocations.Gauntlet_Ursore.TileX,
			global.WarpLocations.Gauntlet_Ursore.TileY,
			global.WarpLocations.Gauntlet_Ursore.PlayerX,
			global.WarpLocations.Gauntlet_Ursore.PlayerY,
			global.WarpLocations.Gauntlet_Ursore.PlayerFacing
			)
			break;
			
		case "Gauntlet_Warbane":
			WarpTo(
			global.WarpLocations.Gauntlet_Warbane.TileX,
			global.WarpLocations.Gauntlet_Warbane.TileY,
			global.WarpLocations.Gauntlet_Warbane.PlayerX,
			global.WarpLocations.Gauntlet_Warbane.PlayerY,
			global.WarpLocations.Gauntlet_Warbane.PlayerFacing
			)
			break;
			
		case "Gauntlet_Ganon":
			WarpTo(
			global.WarpLocations.Gauntlet_Ganon.TileX,
			global.WarpLocations.Gauntlet_Ganon.TileY,
			global.WarpLocations.Gauntlet_Ganon.PlayerX,
			global.WarpLocations.Gauntlet_Ganon.PlayerY,
			global.WarpLocations.Gauntlet_Ganon.PlayerFacing
			)
			break;
			
		
	}
}