
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
	if global.CurrentSpell = -1
	{
		if Find_Item(Spells.Wand,1) <> -1
		{
			global.CurrentSpell = Spells.Wand;
		}
	}
}

