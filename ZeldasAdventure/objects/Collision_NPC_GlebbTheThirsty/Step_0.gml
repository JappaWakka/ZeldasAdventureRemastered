if IsPlayerOnSameTile = false
{
	if Item_FindIndex(Treasures.VialOfWind,0) <> -1
	{
		instance_destroy()
	}
}