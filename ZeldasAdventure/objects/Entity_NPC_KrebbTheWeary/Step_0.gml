if IsPlayerOnSameTile_EnemyOrNPC() = false
{
	if Item_FindIndex(Spells.Dagger,1) <> -1
	{
		instance_destroy()
	}	
}
