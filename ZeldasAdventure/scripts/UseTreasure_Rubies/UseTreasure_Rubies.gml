// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UseTreasure_Rubies()
{
	//BeggarWoman
	if global.CurrentTile.x = 9 && global.CurrentTile.y = 21
	{
		//If you already have the Firestorm Spell
		if Item_FindIndex(Spells.Firestorm,1) <> -1
		{
			audio_play_sound_relative(SFX_Use_Error,100,false);
		}
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false);
	}

}