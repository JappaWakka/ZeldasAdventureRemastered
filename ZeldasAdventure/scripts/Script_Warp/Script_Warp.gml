function WarpTo(TileX, TileY, PlayerX, PlayerY, FadeSpeed = 8)
{
	if global.FadeProgress = 3
	{
		global.FadeProgress = 0;
		global.FadeSpeed = FadeSpeed;
		return false;
	}
	
	if global.FadeProgress = 1
	{
		Entity_Player.x = TileX * tileWidth + PlayerX;
		Entity_Player.y = TileY * tileHeight + PlayerY;
		global.CurrentTile.x = TileX;
		global.CurrentTile.y = TileY;
		camera_set_view_pos(view,global.CurrentTile.x * tileWidth,global.CurrentTile.y * tileHeight);
		global.SwitchTracks = true;
		return true;
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
	ForestOfOgham_ShrineOfEarth : {TileX:6,TileY:31,PlayerX:266,PlayerY:74},
	
	//Shrines
	ShrineOfEarth_Entrance : {TileX:6,TileY:35,PlayerX:106,PlayerY:118},
	
	ShrineOfIllusion_Entrance : {TileX:6,TileY:22,PlayerX:192,PlayerY:128},
	
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
		case "Spawn_Overworld" :
			WarpTo(
			global.WarpLocations.VisionHenge_Spawn.TileX,
			global.WarpLocations.VisionHenge_Spawn.TileY,
			global.WarpLocations.VisionHenge_Spawn.PlayerX,
			global.WarpLocations.VisionHenge_Spawn.PlayerY
			)
			break;
		case "Spawn_Shrine1":
			WarpTo(
			global.WarpLocations.ShrineOfEarth_Entrance.TileX,
			global.WarpLocations.ShrineOfEarth_Entrance.TileY,
			global.WarpLocations.ShrineOfEarth_Entrance.PlayerX,
			global.WarpLocations.ShrineOfEarth_Entrance.PlayerY
			)
			break;
		case "Shrine1_Outside":
			WarpTo(
			global.WarpLocations.ForestOfOgham_ShrineOfEarth.TileX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth.TileY,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth.PlayerX,
			global.WarpLocations.ForestOfOgham_ShrineOfEarth.PlayerY
			)
			break;
		case "Spawn_Shrine2":
			WarpTo(
			global.WarpLocations.ShrineOfIllusion_Entrance.TileX,
			global.WarpLocations.ShrineOfIllusion_Entrance.TileY,
			global.WarpLocations.ShrineOfIllusion_Entrance.PlayerX,
			global.WarpLocations.ShrineOfIllusion_Entrance.PlayerY
			)
			break;
		case "Spawn_Shrine3":
			WarpTo(
			global.WarpLocations.ShrineOfAir_Entrance.TileX,
			global.WarpLocations.ShrineOfAir_Entrance.TileY,
			global.WarpLocations.ShrineOfAir_Entrance.PlayerX,
			global.WarpLocations.ShrineOfAir_Entrance.PlayerY
			)
			break;
		case "Spawn_Shrine4":
			WarpTo(
			global.WarpLocations.ShrineOfDestiny_Entrance.TileX,
			global.WarpLocations.ShrineOfDestiny_Entrance.TileY,
			global.WarpLocations.ShrineOfDestiny_Entrance.PlayerX,
			global.WarpLocations.ShrineOfDestiny_Entrance.PlayerY
			)
			break;
		case "Spawn_Shrine5":
			WarpTo(
			global.WarpLocations.ShrineOfWater_Entrance.TileX,
			global.WarpLocations.ShrineOfWater_Entrance.TileY,
			global.WarpLocations.ShrineOfWater_Entrance.PlayerX,
			global.WarpLocations.ShrineOfWater_Entrance.PlayerY
			)
			break;
		case "Spawn_Shrine6":
			WarpTo(
			global.WarpLocations.ShrineOfStrength_Entrance.TileX,
			global.WarpLocations.ShrineOfStrength_Entrance.TileY,
			global.WarpLocations.ShrineOfStrength_Entrance.PlayerX,
			global.WarpLocations.ShrineOfStrength_Entrance.PlayerY
			)
			break;
		case "Spawn_Shrine7":
			WarpTo(
			global.WarpLocations.ShrineOfFire_Entrance.TileX,
			global.WarpLocations.ShrineOfFire_Entrance.TileY,
			global.WarpLocations.ShrineOfFire_Entrance.PlayerX,
			global.WarpLocations.ShrineOfFire_Entrance.PlayerY
			)
			break;
		case "Spawn_Gauntlet":
			WarpTo(
			global.WarpLocations.GannonsGauntlet.TileX,
			global.WarpLocations.GannonsGauntlet.TileY,
			global.WarpLocations.GannonsGauntlet.PlayerX,
			global.WarpLocations.GannonsGauntlet.PlayerY
			)
			break;
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
		
	}
}