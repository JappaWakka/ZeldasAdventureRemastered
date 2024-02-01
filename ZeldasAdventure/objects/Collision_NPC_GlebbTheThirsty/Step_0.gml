if IsPlayerOnSameTile = false
{
	if Item_FindIndex(Treasure.VialOfWind,0) <> -1
	{
		instance_destroy()
	}
}