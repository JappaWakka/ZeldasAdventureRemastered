
//Set Fullscreen
if global.Fullscreen <> window_get_fullscreen()
{
	window_set_fullscreen(global.Fullscreen)
	if global.Fullscreen = false
	{
		window_set_size(ViewWidth * global.WindowScale,ViewHeight * global.WindowScale);
	}
}

/// Overworld Camera
if room == Room_Overworld
{
	Camera_Pan()
	//Auto-equip Wand if nothing is equipped
	if global.RemasteredMode = true
	{
		if Item_FindValue(global.CurrentSpell,1) = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
		{
			global.CurrentSpell = Item_FindIndex(Spells.Wand,1);
		}
	}
	else
	{
		if global.CurrentItem[1] = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
		{
			global.CurrentItem = [1,Item_FindIndex(Spells.Wand,1)];
		}
	}
	if audio_is_playing(global.CurrentDialogue_ID) = false
	{
		global.CurrentDialogue_Asset = Dialog_None
		global.Subtitle = ""
	}

}

