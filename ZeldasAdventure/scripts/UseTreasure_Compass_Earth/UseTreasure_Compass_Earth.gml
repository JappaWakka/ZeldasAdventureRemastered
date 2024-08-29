function UseTreasure_Compass_Earth()
{
	if global.CurrentMap = Maps.Overworld and global.CameraIsPanning = false
	{
		global.CompassWarp = "ShrineOfEarth_Outside"
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}