function UseTreasure_Compass_Earth()
{
	if global.CurrentMap = Maps.Overworld and global.CameraIsPanning = false
	{
		global.CompassWarp = "ShrineOfEarth_Outside_Warp"
		global.FadeProgress = 3
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}