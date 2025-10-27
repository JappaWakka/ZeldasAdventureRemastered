function WarpTo(TileX, TileY, PlayerX = -1, PlayerY = -1, FadeSpeed = 12)
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
		instance_destroy(Entity_Pickup_ItemDrops)
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
		}
		else
		{
			global.CurrentMap = Maps.Overworld
		}
		camera_set_view_pos(view,global.CurrentTile.x * tileWidth,global.CurrentTile.y * tileHeight);
		instance_deactivate_region(PrevousTileX * tileWidth, PrevousTileY * tileHeight, tileWidth, tileHeight,true,true)
		instance_activate_region(TileX * tileWidth, TileY * tileHeight, tileWidth, tileHeight, true)
		instance_activate_object(Entity_Parent_Player)
		global.SwitchTracks = true;
		
		global.CameraIsPanning = false;
		
		return true;
	}
	if global.FadeProgress = 2
	{
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
	}
}

global.WarpLocations =
{
	//Vision Henge
	VisionHenge_Spawn : {TileX:6,TileY:22,PlayerX:192,PlayerY:128},
	
	//Plain Of Andor
	PlainOfAndor_MobilinsHeadInn_Inside : {TileX:10,TileY:21,PlayerX:64,PlayerY:148},
	PlainOfAndor_MobilinsHeadInn_Outside : {TileX:9,TileY:21,PlayerX:96,PlayerY:188},

	//Forest of Ogham
	ForestOfOgham_TektiteCave_Inside : {TileX:7,TileY:31,PlayerX:38,PlayerY:128},
	ForestOfOgham_TektiteCave_Outside : {TileX:6,TileY:31,PlayerX:300,PlayerY:162},
	ForestOfOgham_ShrineOfEarth_Exit : {TileX:6,TileY:31,PlayerX:266,PlayerY:74},
	ForestOfOgham_ShrineOfEarth_Warp : {TileX:6,TileY:31,PlayerX:112,PlayerY:172},
		
	//GreatWimbich
	GreatWimbich_GeneralStore_Inside : {TileX:7,TileY:11,PlayerX:204,PlayerY:200},
	GreatWimbich_GeneralStore_Outside : {TileX:10,TileY:12,PlayerX:62,PlayerY:160},
	GreatWimbich_MagicStore_Inside : {TileX:8,TileY:11,PlayerX:124,PlayerY:200},
	GreatWimbich_MagicStore_Outside : {TileX:10,TileY:12,PlayerX:276,PlayerY:160},
	GreatWimbich_Blacksmith_Inside : {TileX:9,TileY:11,PlayerX:156,PlayerY:200},
	GreatWimbich_Blacksmith_Outside : {TileX:11,TileY:12,PlayerX:128,PlayerY:160},
	GreatWimbich_TwinFatherHouse_Inside : {TileX:9,TileY:12,PlayerX:204,PlayerY:196},
	GreatWimbich_TwinFatherHouse_Outside : {TileX:11,TileY:13,PlayerX:248,PlayerY:176},
	
	//Shortcuts
	SeacoastPlainShortcut_Inside_West : {TileX:12,TileY:20,PlayerX:64,PlayerY:144},
	SeacoastPlainShortcut_Inside_East : {TileX:12,TileY:20,PlayerX:332,PlayerY:112},
	SeacoastPlainShortcut_Outside_West : {TileX:9,TileY:20,PlayerX:320,PlayerY:124},
	//SeacoastPlainShortcut_Outside_East : {TileX:14,TileY:21,PlayerX:248,PlayerY:112}, //working
	SeacoastPlainShortcut_Outside_East : {TileX:12,TileY:20,PlayerX:332,PlayerY:112}, //not working
	
	//Shrines
	ShrineOfEarth_Spawn_Entrance : {TileX:6,TileY:35,PlayerX:106,PlayerY:118},
	ShrineOfEarth_Spawn_Boss : {TileX:12,TileY:31,PlayerX:88,PlayerY:132},
	ShrineOfEarth_09_to_11 : {TileX:11,TileY:35,PlayerX:288,PlayerY:208},
	ShrineOfEarth_11_to_09 : {TileX:11,TileY:38,PlayerX:288,PlayerY:24},
	ShrineOfEarth_13_to_14 : {TileX:9,TileY:34,PlayerX:360,PlayerY:136},
	ShrineOfEarth_14_to_13 : {TileX:11,TileY:34,PlayerX:24,PlayerY:136},
	ShrineOfEarth_20_to_21 : {TileX:12,TileY:30,PlayerX:184,PlayerY:204},
	ShrineOfEarth_21_to_20 : {TileX:12,TileY:31,PlayerX:184,PlayerY:32},
	ShrineOfEarth_21_to_22 : {TileX:12,TileY:29,PlayerX:176,PlayerY:208},
	ShrineOfEarth_22_to_21 : {TileX:12,TileY:30,PlayerX:188,PlayerY:28},

	ShrineOfIllusion_Entrance : {TileX:0,TileY:0,PlayerX:0,PlayerY:0},
	
	ShrineOfAir_Entrance : {TileX:5,TileY:2,PlayerX:184,PlayerY:128},
	
	ShrineOfDestiny_Entrance : {TileX:26,TileY:24,PlayerX:188,PlayerY:168},
	
	ShrineOfWater_Entrance : {TileX:0,TileY:0,PlayerX:0,PlayerY:0},
	
	ShrineOfStrength_Entrance : {TileX:0,TileY:0,PlayerX:0,PlayerY:0},
	
	ShrineOfFire_Entrance : {TileX:0,TileY:0,PlayerX:0,PlayerY:0},
	
	GannonsGauntlet : {TileX:0,TileY:0,PlayerX:0,PlayerY:0},
		
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
			global.WarpLocations.VisionHenge_Spawn.PlayerY
			)
			break;
		
		//Plain Of Andor
		case "MobilinsHeadInn_Inside":
			WarpTo(
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.TileX,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.TileY,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.PlayerX,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Inside.PlayerY
			)
			break;
		case "MobilinsHeadInn_Outside":
			WarpTo(
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.TileX,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.TileY,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.PlayerX,
			global.WarpLocations.PlainOfAndor_MobilinsHeadInn_Outside.PlayerY
			)
			break;
		
		
		//Forest of Ogham
		case "TektiteCave_Inside":
			WarpTo(
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.TileX,
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.TileY,
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.PlayerX,
			global.WarpLocations.ForestOfOgham_TektiteCave_Inside.PlayerY
			)
			break;
		case "TektiteCave_Outside":
			WarpTo(
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.TileX,
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.TileY,
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.PlayerX,
			global.WarpLocations.ForestOfOgham_TektiteCave_Outside.PlayerY
			)
			break;
		case "ShrineOfEarth_Outside_Exit":
			WarpTo(
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.TileX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.TileY,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.PlayerX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Exit.PlayerY
			)
			break;
		case "ShrineOfEarth_Outside_Warp":
			WarpTo(
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.TileX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.TileY,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.PlayerX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth_Warp.PlayerY
			)
			break;
			
		
		//Great Wimbich
		case "GeneralStore_Inside":
			WarpTo(
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.TileX,
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.TileY,
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.PlayerX,
			global.WarpLocations.GreatWimbich_GeneralStore_Inside.PlayerY
			)
			break;
		case "GeneralStore_Outside":
			WarpTo(
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.TileX,
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.TileY,
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.PlayerX,
			global.WarpLocations.GreatWimbich_GeneralStore_Outside.PlayerY
			)
			break;
		case "MagicStore_Inside":
			WarpTo(
			global.WarpLocations.GreatWimbich_MagicStore_Inside.TileX,
			global.WarpLocations.GreatWimbich_MagicStore_Inside.TileY,
			global.WarpLocations.GreatWimbich_MagicStore_Inside.PlayerX,
			global.WarpLocations.GreatWimbich_MagicStore_Inside.PlayerY
			)
			break;
		case "MagicStore_Outside":
			WarpTo(
			global.WarpLocations.GreatWimbich_MagicStore_Outside.TileX,
			global.WarpLocations.GreatWimbich_MagicStore_Outside.TileY,
			global.WarpLocations.GreatWimbich_MagicStore_Outside.PlayerX,
			global.WarpLocations.GreatWimbich_MagicStore_Outside.PlayerY
			)
			break;
		case "Blacksmith_Inside":
			WarpTo(
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.TileX,
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.TileY,
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.PlayerX,
			global.WarpLocations.GreatWimbich_Blacksmith_Inside.PlayerY
			)
			break;
		case "Blacksmith_Outside":
			WarpTo(
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.TileX,
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.TileY,
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.PlayerX,
			global.WarpLocations.GreatWimbich_Blacksmith_Outside.PlayerY
			)
			break;
		case "TwinFatherHouse_Inside":
			WarpTo(
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.TileX,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.TileY,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.PlayerX,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Inside.PlayerY
			)
			break;
		case "TwinFatherHouse_Outside":
			WarpTo(
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.TileX,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.TileY,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.PlayerX,
			global.WarpLocations.GreatWimbich_TwinFatherHouse_Outside.PlayerY
			)
			break;
			
		//Shorcuts
		case "SeacoastPlainShortcut_Inside_West":
			WarpTo(
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.TileX,
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.TileY,
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.PlayerX,
			global.WarpLocations.SeacoastPlainShortcut_Inside_West.PlayerY
			)
			break;
		case "SeacoastPlainShortcut_Inside_East":
			WarpTo(
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.TileX,
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.TileY,
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.PlayerX,
			global.WarpLocations.SeacoastPlainShortcut_Inside_East.PlayerY
			)
			break;
		case "SeacoastPlainShortcut_Outside_West":
			WarpTo(
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.TileX,
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.TileY,
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.PlayerX,
			global.WarpLocations.SeacoastPlainShortcut_Outside_West.PlayerY
			)
			break;
		case "SeacoastPlainShortcut_Outside_East":
			WarpTo(
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.TileX,
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.TileY,
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.PlayerX,
			global.WarpLocations.SeacoastPlainShortcut_Outside_East.PlayerY
			)
			break;
			
		//Shrine of Earth
		case "Spawn_ShrineOfEarth":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.TileX,
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.TileY,
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.PlayerX,
			global.WarpLocations.ShrineOfEarth_Spawn_Entrance.PlayerY
			)
			break;
		case "Spawn_ShrineOfEarth_Boss":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.TileX,
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.TileY,
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.PlayerX,
			global.WarpLocations.ShrineOfEarth_Spawn_Boss.PlayerY
			)
			break;
		case "ShrineOfEarth_09_to_11":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_09_to_11.TileX,
			global.WarpLocations.ShrineOfEarth_09_to_11.TileY,
			global.WarpLocations.ShrineOfEarth_09_to_11.PlayerX,
			global.WarpLocations.ShrineOfEarth_09_to_11.PlayerY
			)
			break;
		case "ShrineOfEarth_11_to_09":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_11_to_09.TileX,
			global.WarpLocations.ShrineOfEarth_11_to_09.TileY,
			global.WarpLocations.ShrineOfEarth_11_to_09.PlayerX,
			global.WarpLocations.ShrineOfEarth_11_to_09.PlayerY
			)
			break;
		case "ShrineOfEarth_13_to_14":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_13_to_14.TileX,
			global.WarpLocations.ShrineOfEarth_13_to_14.TileY,
			global.WarpLocations.ShrineOfEarth_13_to_14.PlayerX,
			global.WarpLocations.ShrineOfEarth_13_to_14.PlayerY
			)
			break;
		case "ShrineOfEarth_14_to_13":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_14_to_13.TileX,
			global.WarpLocations.ShrineOfEarth_14_to_13.TileY,
			global.WarpLocations.ShrineOfEarth_14_to_13.PlayerX,
			global.WarpLocations.ShrineOfEarth_14_to_13.PlayerY
			)
			break;
		case "ShrineOfEarth_20_to_21":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_20_to_21.TileX,
			global.WarpLocations.ShrineOfEarth_20_to_21.TileY,
			global.WarpLocations.ShrineOfEarth_20_to_21.PlayerX,
			global.WarpLocations.ShrineOfEarth_20_to_21.PlayerY
			)
			break;
		case "ShrineOfEarth_21_to_20":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_21_to_20.TileX,
			global.WarpLocations.ShrineOfEarth_21_to_20.TileY,
			global.WarpLocations.ShrineOfEarth_21_to_20.PlayerX,
			global.WarpLocations.ShrineOfEarth_21_to_20.PlayerY
			)
			break;
		case "ShrineOfEarth_21_to_22":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_21_to_22.TileX,
			global.WarpLocations.ShrineOfEarth_21_to_22.TileY,
			global.WarpLocations.ShrineOfEarth_21_to_22.PlayerX,
			global.WarpLocations.ShrineOfEarth_21_to_22.PlayerY
			)
			break;
		case "ShrineOfEarth_22_to_21":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_22_to_21.TileX,
			global.WarpLocations.ShrineOfEarth_22_to_21.TileY,
			global.WarpLocations.ShrineOfEarth_22_to_21.PlayerX,
			global.WarpLocations.ShrineOfEarth_22_to_21.PlayerY
			)
			break;
		
			
		//Shrine of Illusion
		case "Spawn_ShrineOfIllusion":
			WarpTo(
			global.WarpLocations.ShrineOfIllusion_Entrance.TileX,
			global.WarpLocations.ShrineOfIllusion_Entrance.TileY,
			global.WarpLocations.ShrineOfIllusion_Entrance.PlayerX,
			global.WarpLocations.ShrineOfIllusion_Entrance.PlayerY
			)
			break;
			
		//Shrine of Air
		case "Spawn_ShrineOfAir":
			WarpTo(
			global.WarpLocations.ShrineOfAir_Entrance.TileX,
			global.WarpLocations.ShrineOfAir_Entrance.TileY,
			global.WarpLocations.ShrineOfAir_Entrance.PlayerX,
			global.WarpLocations.ShrineOfAir_Entrance.PlayerY
			)
			break;
			
		//Shrine of Destiny
		case "Spawn_ShrineOfDestiny":
			WarpTo(
			global.WarpLocations.ShrineOfDestiny_Entrance.TileX,
			global.WarpLocations.ShrineOfDestiny_Entrance.TileY,
			global.WarpLocations.ShrineOfDestiny_Entrance.PlayerX,
			global.WarpLocations.ShrineOfDestiny_Entrance.PlayerY
			)
			break;
			
		//Shrine of Water
		case "Spawn_ShrineOfWater":
			WarpTo(
			global.WarpLocations.ShrineOfWater_Entrance.TileX,
			global.WarpLocations.ShrineOfWater_Entrance.TileY,
			global.WarpLocations.ShrineOfWater_Entrance.PlayerX,
			global.WarpLocations.ShrineOfWater_Entrance.PlayerY
			)
			break;
			
		//Shrine of Strength
		case "Spawn_ShrineOfStrength":
			WarpTo(
			global.WarpLocations.ShrineOfStrength_Entrance.TileX,
			global.WarpLocations.ShrineOfStrength_Entrance.TileY,
			global.WarpLocations.ShrineOfStrength_Entrance.PlayerX,
			global.WarpLocations.ShrineOfStrength_Entrance.PlayerY
			)
			break;
			
		//Shrine of Fire
		case "Spawn_ShrineOfFire":
			WarpTo(
			global.WarpLocations.ShrineOfFire_Entrance.TileX,
			global.WarpLocations.ShrineOfFire_Entrance.TileY,
			global.WarpLocations.ShrineOfFire_Entrance.PlayerX,
			global.WarpLocations.ShrineOfFire_Entrance.PlayerY
			)
			break;
				
		//Gauntlet
		case "Spawn_Gauntlet":
			WarpTo(
			global.WarpLocations.GannonsGauntlet.TileX,
			global.WarpLocations.GannonsGauntlet.TileY,
			global.WarpLocations.GannonsGauntlet.PlayerX,
			global.WarpLocations.GannonsGauntlet.PlayerY
			)
			break;
			
		
	}
}