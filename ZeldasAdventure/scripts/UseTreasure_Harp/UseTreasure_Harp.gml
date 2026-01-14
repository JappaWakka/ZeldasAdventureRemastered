function UseTreasure_Harp()
{
	if global.CameraIsPanning = false and global.CurrentMap <> Maps.Overworld and global.CurrentMap <> Maps.Gauntlet
	{
		switch global.CurrentMap
		{
			case Maps.Shrine1:
				global.CompassWarp = "Spawn_ShrineOfEarth"
				global.FadeProgress = 3
				break
			case Maps.Shrine2:
				global.CompassWarp = "Spawn_ShrineOfIllusion"
				global.FadeProgress = 3
				break
			case Maps.Shrine3:
				global.CompassWarp = "Spawn_ShrineOfAir"
				global.FadeProgress = 3
				break
			case Maps.Shrine4:
				global.CompassWarp = "Spawn_ShrineOfDestiny"
				global.FadeProgress = 3
				break
			case Maps.Shrine5:
				global.CompassWarp = "Spawn_ShrineOfWater"
				global.FadeProgress = 3
				break
			case Maps.Shrine6:
				global.CompassWarp = "Spawn_ShrineOfStrength"
				global.FadeProgress = 3
				break
			case Maps.Shrine7:
				global.CompassWarp = "Spawn_ShrineOfFire"
				global.FadeProgress = 3
				break
		}
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}