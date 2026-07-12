if IsPlayerOnSameTile_EnemyOrNPC() = false
{
	if global.RemasteredMode = false
	{
		if Item_FindIndex(Treasures.Flute,0) <> -1
		{
			instance_destroy()
		}
	}
}
