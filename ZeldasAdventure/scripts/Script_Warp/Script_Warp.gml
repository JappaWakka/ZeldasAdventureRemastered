function WarpTo(WarpArray, FadeSpeed = 12)
{
	var TileX = WarpArray[0]
	var TileY = WarpArray[1]
	var PlayerX = WarpArray[2]
	var PlayerY = WarpArray[3]
	var PlayerFacing = WarpArray[4]
	
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

function SetWarpLocations()
{
	global.WarpLocations =
	{
		// 0 : TileX, 1 : TileY, 2 : PlayerX, 3 : PlayerY, 4 : PlayerFacing
		
		//Vision Henge
		VisionHenge_Spawn : [6,22,192,128,global.Directions.South],
		
		//Plain Of Andor
		PlainOfAndor_MobilinsHeadInn_Inside : [10,21,64,148,global.Directions.East],
		PlainOfAndor_MobilinsHeadInn_Outside : [9,21,120,176,global.Directions.South],
	
		//Forest of Ogham
		ForestOfOgham_TektiteCave_Inside : [7,31,38,128,global.Directions.East],
		ForestOfOgham_TektiteCave_Outside : [6,31,300,162,global.Directions.South],
		ForestOfOgham_ShrineOfEarth_Exit : [6,31,266,74,global.Directions.South],
		ForestOfOgham_ShrineOfEarth_Warp : [6,31,112,172,global.Directions.South],
			
		//GreatWimbich
		GreatWimbich_GeneralStore_Inside : [7,11,204,200,global.Directions.North],
		GreatWimbich_GeneralStore_Outside : [10,12,62,160,global.Directions.South],
		GreatWimbich_MagicStore_Inside : [8,11,124,200,global.Directions.North],
		GreatWimbich_MagicStore_Outside : [10,12,276,160,global.Directions.South],
		GreatWimbich_Blacksmith_Inside : [9,11,156,200,global.Directions.North],
		GreatWimbich_Blacksmith_Outside : [11,12,128,160,global.Directions.South],
		GreatWimbich_TwinFatherHouse_Inside : [9,12,204,196,global.Directions.North],
		GreatWimbich_TwinFatherHouse_Outside : [11,13,248,176,global.Directions.South],
		
		//Forest of Torian
		ForestOfTorian_WhiteSteedLodge_Inside : [13,6,180,208,global.Directions.North],
		ForestOfTorian_WhiteSteedLodge_Outside : [13,10,258,124,global.Directions.South],
		ForestOfTorian_TreeTrunkCave_Inside : [16,10,268,60,global.Directions.South],
		ForestOfTorian_TreeTrunkCave_Outside : [14,10,276,124,global.Directions.West],
		ForestOfTorian_ShrineOfIllusion_Exit : [11,7,176,136,global.Directions.South],
		ForestOfTorian_ShrineOfIllusion_Warp : [11,7,232,156,global.Directions.South],
		
		//Ubato Hills
		UbatoHills_ShrineOfDestiny_Exit : [18,4,96,176,global.Directions.South],
		
		//Shortcuts
		SeacoastPlainShortcut_Inside_West : [12,20,64,144,global.Directions.East],
		SeacoastPlainShortcut_Inside_East : [12,20,332,112,global.Directions.West],
		SeacoastPlainShortcut_Outside_West : [9,20,320,124,global.Directions.West],
		//SeacoastPlainShortcut_Outside_East : [14,21,248,112,global.Directions.South], //working
		SeacoastPlainShortcut_Outside_East : [12,20,332,112,global.Directions.South], //not working
		
		GubashaDesertShortcut_Inside_West : [20,4,52,116,global.Directions.East],
		GubashaDesertShortcut_Inside_East : [20,4,336,112,global.Directions.West],
		GubashaDesertShortcut_Outside_West : [19,5,284,112,global.Directions.West],
		//GubashaDesertShortcut_Outside_East : [21,4,76,108,global.Directions.South], //working
		GubashaDesertShortcut_Outside_East : [20,4,336,112,global.Directions.East], //not working
		
		//Shrines
		ShrineOfEarth_Spawn_Entrance : [6,35,106,118,global.Directions.South],
		ShrineOfEarth_Spawn_Boss : [12,31,87,136,global.Directions.East],
		ShrineOfEarth_09_to_11 : [11,35,288,208,global.Directions.North],
		ShrineOfEarth_11_to_09 : [11,38,288,24,global.Directions.South],
		ShrineOfEarth_13_to_14 : [9,34,360,136,global.Directions.West],
		ShrineOfEarth_14_to_13 : [11,34,24,136,global.Directions.East],
		ShrineOfEarth_20_to_21 : [12,30,184,204,global.Directions.North],
		ShrineOfEarth_21_to_20 : [12,31,184,32,global.Directions.South],
		ShrineOfEarth_21_to_22 : [12,29,176,208,global.Directions.North],
		ShrineOfEarth_22_to_21 : [12,30,188,28,global.Directions.South],
	
		ShrineOfIllusion_Spawn_Entrance : [19,27,184,204,global.Directions.North],
		ShrineOfIllusion_SlideRoom : [19,26,260,152,global.Directions.South],
		ShrineOfIllusion_Spawn_Boss : [27,20,190,182,global.Directions.North],
		ShrineOfIllusion_03_to_05 : [18,25,303,102,global.Directions.South],
		ShrineOfIllusion_04_to_05 : [18,25,189,204,global.Directions.North],
		ShrineOfIllusion_05_to_04 : [18,26,185,90,global.Directions.South],
		ShrineOfIllusion_05_to_06 : [18,24,187,204,global.Directions.North],
		ShrineOfIllusion_06_to_05 : [18,25,191,84,global.Directions.South],
		ShrineOfIllusion_06_to_07 : [19,24,65,128,global.Directions.East],
		ShrineOfIllusion_07_to_03 : [19,25,255,98,global.Directions.South],
		ShrineOfIllusion_07_to_06 : [18,24,321,154,global.Directions.West],
		ShrineOfIllusion_07_to_08 : [20,24,47,132,global.Directions.East],
		ShrineOfIllusion_08_to_07 : [19,24,317,126,global.Directions.West],
		ShrineOfIllusion_11_to_13 : [20,21,239,204,global.Directions.North],
		ShrineOfIllusion_12_to_14 : [21,21,205,204,global.Directions.North],
		ShrineOfIllusion_13_to_11 : [20,22,229,58,global.Directions.South],
		ShrineOfIllusion_14_to_12 : [21,22,213,84,global.Directions.South],
		ShrineOfIllusion_14_to_15 : [22,21,113,84,global.Directions.South],
		ShrineOfIllusion_15_to_14 : [21,21,319,128,global.Directions.West],
		ShrineOfIllusion_15_to_16 : [23,21,111,76,global.Directions.South],
		ShrineOfIllusion_16_to_15 : [22,21,281,128,global.Directions.West],
		ShrineOfIllusion_17_to_18 : [24,22,51,170,global.Directions.East],
		ShrineOfIllusion_18_to_17 : [23,22,311,188,global.Directions.West],
		ShrineOfIllusion_20_to_21 : [25,20,85,94,global.Directions.East],
		ShrineOfIllusion_21_to_20 : [24,20,313,110,global.Directions.West],
		ShrineOfIllusion_22_to_23 : [27,20,55,134,global.Directions.East],
		ShrineOfIllusion_23_to_22 : [26,20,292,76,global.Directions.West],
		ShrineOfIllusion_23_to_24 : [27,19,163,188,global.Directions.North],
		ShrineOfIllusion_24_to_23 : [27,20,179,56,global.Directions.South],
		
		ShrineOfAir_Spawn_Entrance : [5,2,184,128,global.Directions.North],
		
		ShrineOfDestiny_Spawn_Entrance : [26,24,188,192,global.Directions.North],
		
		ShrineOfWater_Spawn_Entrance : [0,0,0,0,global.Directions.East],
		
		ShrineOfStrength_Spawn_Entrance : [0,0,0,0,global.Directions.South],
		
		ShrineOfFire_Spawn_Entrance : [0,0,0,0,global.Directions.North],
		
		Gauntlet_Llort : [0,0,0,0,global.Directions.North],
		Gauntlet_Pasquinade : [0,0,0,0,global.Directions.North],
		Gauntlet_Avianna : [0,0,0,0,global.Directions.North],
		Gauntlet_Malmort : [0,0,0,0,global.Directions.North],
		Gauntlet_Agwanda : [0,0,0,0,global.Directions.North],
		Gauntlet_Ursore : [0,0,0,0,global.Directions.North],
		Gauntlet_Warbane : [0,0,0,0,global.Directions.North],
		Gauntlet_Ganon : [0,0,0,0,global.Directions.North]
		
	}
}

function WarpToLocation(Name)
{
	switch Name
	{
		//Vision Henge
		case "Spawn_Overworld": WarpTo(global.WarpLocations.VisionHenge_Spawn) break;
		
		//Plain Of Andor
		case "MobilinsHeadInn_Inside": WarpTo(global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside) break;
		case "MobilinsHeadInn_Outside": WarpTo(global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside) break;		
		
		//Forest of Ogham
		case "TektiteCave_Inside": WarpTo(global.WarpLocations.ForestOfOgham_TektiteCave_Inside) break;
		case "TektiteCave_Outside": WarpTo(global.WarpLocations.ForestOfOgham_TektiteCave_Outside) break;
		case "ShrineOfEarth_Outside_Exit": WarpTo(global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit) break;
		case "ShrineOfEarth_Outside_Warp": WarpTo(global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp) break;			
		
		//Great Wimbich
		case "GeneralStore_Inside": WarpTo(global.WarpLocations.GreatWimbich_GeneralStore_Inside) break;
		case "GeneralStore_Outside": WarpTo(global.WarpLocations.GreatWimbich_GeneralStore_Outside) break;
		case "MagicStore_Inside": WarpTo(global.WarpLocations.GreatWimbich_MagicStore_Inside) break;
		case "MagicStore_Outside": WarpTo(global.WarpLocations.GreatWimbich_MagicStore_Outside) break;
		case "Blacksmith_Inside": WarpTo(global.WarpLocations.GreatWimbich_Blacksmith_Inside) break;
		case "Blacksmith_Outside": WarpTo(global.WarpLocations.GreatWimbich_Blacksmith_Outside) break;
		case "TwinFatherHouse_Inside": WarpTo(global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside) break;
		case "TwinFatherHouse_Outside": WarpTo(global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside) break;
			
		//Forest of Torian
		case "WhiteSteedLodge_Inside": WarpTo(global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Inside) break;
		case "WhiteSteedLodge_Outside": WarpTo(global.WarpLocations.ForestOfTorian_WhiteSteedLodge_Outside) break;
		case "TreeTrunkCave_Inside": WarpTo(global.WarpLocations.ForestOfTorian_TreeTrunkCave_Inside) break;
		case "TreeTrunkCave_Outside": WarpTo(global.WarpLocations.ForestOfTorian_TreeTrunkCave_Outside) break;
		case "ShrineOfIllusion_Outside_Exit": WarpTo(global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Exit) break;
		case "ShrineOfIllusion_Outside_Warp": WarpTo(global.WarpLocations.ForestOfTorian_ShrineOfIllusion_Warp) break;
		
		//Ubato Hills
		case "ShrineOfDestiny_Outside_Exit": WarpTo(global.WarpLocations.UbatoHills_ShrineOfDestiny_Exit) break;
			
		//Shorcuts
		case "SeacoastPlainShortcut_Inside_West": WarpTo(global.WarpLocations.SeacoastPlainShortcut_Inside_West) break;
		case "SeacoastPlainShortcut_Inside_East": WarpTo(global.WarpLocations.SeacoastPlainShortcut_Inside_East) break;
		case "SeacoastPlainShortcut_Outside_West": WarpTo(global.WarpLocations.SeacoastPlainShortcut_Outside_West) break;
		case "SeacoastPlainShortcut_Outside_East": WarpTo(global.WarpLocations.SeacoastPlainShortcut_Outside_East) break;
		case "GubashaDesertShortcut_Inside_West": WarpTo(global.WarpLocations.GubashaDesertShortcut_Inside_West) break;
		case "GubashaDesertShortcut_Inside_East": WarpTo(global.WarpLocations.GubashaDesertShortcut_Inside_East) break;
		case "GubashaDesertShortcut_Outside_West": WarpTo(global.WarpLocations.GubashaDesertShortcut_Outside_West) break;
		case "GubashaDesertShortcut_Outside_East": WarpTo(global.WarpLocations.GubashaDesertShortcut_Outside_East) break;
			
		//Shrine of Earth
		case "Spawn_ShrineOfEarth": WarpTo(global.WarpLocations.ShrineOfEarth_Spawn_Entrance) break;
		case "Spawn_ShrineOfEarth_Boss": WarpTo(global.WarpLocations.ShrineOfEarth_Spawn_Boss) break;
		case "ShrineOfEarth_09_to_11": WarpTo(global.WarpLocations.ShrineOfEarth_09_to_11) break;
		case "ShrineOfEarth_11_to_09": WarpTo(global.WarpLocations.ShrineOfEarth_11_to_09) break;
		case "ShrineOfEarth_13_to_14": WarpTo(global.WarpLocations.ShrineOfEarth_13_to_14) break;
		case "ShrineOfEarth_14_to_13": WarpTo(global.WarpLocations.ShrineOfEarth_14_to_13) break;
		case "ShrineOfEarth_20_to_21": WarpTo(global.WarpLocations.ShrineOfEarth_20_to_21) break;
		case "ShrineOfEarth_21_to_20": WarpTo(global.WarpLocations.ShrineOfEarth_21_to_20) break;
		case "ShrineOfEarth_21_to_22": WarpTo(global.WarpLocations.ShrineOfEarth_21_to_22) break;
		case "ShrineOfEarth_22_to_21": WarpTo(global.WarpLocations.ShrineOfEarth_22_to_21) break;
		
			
		//Shrine of Illusion
		case "Spawn_ShrineOfIllusion": WarpTo(global.WarpLocations.ShrineOfIllusion_Spawn_Entrance) break;
		case "Spawn_ShrineOfIllusion_SlideRoom": WarpTo(global.WarpLocations.ShrineOfIllusion_SlideRoom) break;
		case "Spawn_ShrineOfIllusion_Boss": WarpTo(global.WarpLocations.ShrineOfIllusion_Spawn_Boss) break;
		case "ShrineOfIllusion_03_to_05": WarpTo(global.WarpLocations.ShrineOfIllusion_03_to_05) break;
		case "ShrineOfIllusion_04_to_05": WarpTo(global.WarpLocations.ShrineOfIllusion_04_to_05) break;
		case "ShrineOfIllusion_05_to_04": WarpTo(global.WarpLocations.ShrineOfIllusion_05_to_04) break;
		case "ShrineOfIllusion_05_to_06": WarpTo(global.WarpLocations.ShrineOfIllusion_05_to_06) break;
		case "ShrineOfIllusion_06_to_05": WarpTo(global.WarpLocations.ShrineOfIllusion_06_to_05) break;
		case "ShrineOfIllusion_06_to_07": WarpTo(global.WarpLocations.ShrineOfIllusion_06_to_07) break;
		case "ShrineOfIllusion_07_to_03": WarpTo(global.WarpLocations.ShrineOfIllusion_07_to_03) break;
		case "ShrineOfIllusion_07_to_06": WarpTo(global.WarpLocations.ShrineOfIllusion_07_to_06) break;
		case "ShrineOfIllusion_07_to_08": WarpTo(global.WarpLocations.ShrineOfIllusion_07_to_08) break;
		case "ShrineOfIllusion_08_to_07": WarpTo(global.WarpLocations.ShrineOfIllusion_08_to_07) break;
		case "ShrineOfIllusion_11_to_13": WarpTo(global.WarpLocations.ShrineOfIllusion_11_to_13) break;
		case "ShrineOfIllusion_12_to_14": WarpTo(global.WarpLocations.ShrineOfIllusion_12_to_14) break;
		case "ShrineOfIllusion_13_to_11": WarpTo(global.WarpLocations.ShrineOfIllusion_13_to_11) break;
		case "ShrineOfIllusion_14_to_12": WarpTo(global.WarpLocations.ShrineOfIllusion_14_to_12) break;
		case "ShrineOfIllusion_14_to_15": WarpTo(global.WarpLocations.ShrineOfIllusion_14_to_15) break;
		case "ShrineOfIllusion_15_to_14": WarpTo(global.WarpLocations.ShrineOfIllusion_15_to_14) break;
		case "ShrineOfIllusion_15_to_16": WarpTo(global.WarpLocations.ShrineOfIllusion_15_to_16) break;
		case "ShrineOfIllusion_16_to_15": WarpTo(global.WarpLocations.ShrineOfIllusion_16_to_15) break;
		case "ShrineOfIllusion_17_to_18": WarpTo(global.WarpLocations.ShrineOfIllusion_17_to_18) break;
		case "ShrineOfIllusion_18_to_17": WarpTo(global.WarpLocations.ShrineOfIllusion_18_to_17) break;
		case "ShrineOfIllusion_20_to_21": WarpTo(global.WarpLocations.ShrineOfIllusion_20_to_21) break;
		case "ShrineOfIllusion_21_to_20": WarpTo(global.WarpLocations.ShrineOfIllusion_21_to_20) break;
		case "ShrineOfIllusion_22_to_23": WarpTo(global.WarpLocations.ShrineOfIllusion_22_to_23) break;
		case "ShrineOfIllusion_23_to_22": WarpTo(global.WarpLocations.ShrineOfIllusion_23_to_22) break;
		case "ShrineOfIllusion_23_to_24": WarpTo(global.WarpLocations.ShrineOfIllusion_23_to_24) break;
		case "ShrineOfIllusion_24_to_23": WarpTo(global.WarpLocations.ShrineOfIllusion_24_to_23) break;
			
		//Shrine of Air
		case "Spawn_ShrineOfAir": WarpTo(global.WarpLocations.ShrineOfAir_Spawn_Entrance) break;
			
		//Shrine of Destiny
		case "Spawn_ShrineOfDestiny": WarpTo(global.WarpLocations.ShrineOfDestiny_Spawn_Entrance) break;
			
		//Shrine of Water
		case "Spawn_ShrineOfWater": WarpTo(global.WarpLocations.ShrineOfWater_Spawn_Entrance) break;
			
		//Shrine of Strength
		case "Spawn_ShrineOfStrength": WarpTo(global.WarpLocations.ShrineOfStrength_Spawn_Entrance) break;
			
		//Shrine of Fire
		case "Spawn_ShrineOfFire": WarpTo(global.WarpLocations.ShrineOfFire_Spawn_Entrance) break;
				
		//Gauntlet
		case "Gauntlet_Llort": WarpTo(global.WarpLocations.Gauntlet_Llort) break;			
		case "Gauntlet_Pasquinade": WarpTo(global.WarpLocations.Gauntlet_Pasquinade) break;			
		case "Gauntlet_Avianna": WarpTo(global.WarpLocations.Gauntlet_Avianna) break;			
		case "Gauntlet_Malmort": WarpTo(global.WarpLocations.Gauntlet_Malmort) break;			
		case "Gauntlet_Agwanda": WarpTo(global.WarpLocations.Gauntlet_Agwanda) break;			
		case "Gauntlet_Ursore": WarpTo(global.WarpLocations.Gauntlet_Ursore) break;			
		case "Gauntlet_Warbane": WarpTo(global.WarpLocations.Gauntlet_Warbane) break;			
		case "Gauntlet_Ganon": WarpTo(global.WarpLocations.Gauntlet_Ganon) break;
			
	}
}