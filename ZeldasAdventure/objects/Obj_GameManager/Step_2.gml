
//Set Fullscreen
if global.Fullscreen <> window_get_fullscreen()
{
	window_set_fullscreen(global.Fullscreen)
}

/// Overworld Camera
if room == Room_Overworld
{
	Camera_Pan()
	//Auto-equip Wand if nothing is equipped
	if global.RemasteredMode = true
	{
		if global.CurrentSpell = -1 && Item_FindIndex(Spells.Wand,1) <> -1
			{
				global.CurrentSpell = Spells.Wand;
			}
	}
	else
	{
		if global.CurrentItem[1] = -1 && Item_FindIndex(Spells.Wand,1) <> -1
		{
			global.CurrentItem = [1,Spells.Wand];
		}
	}

}

