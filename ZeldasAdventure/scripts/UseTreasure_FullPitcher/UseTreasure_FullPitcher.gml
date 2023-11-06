// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UseTreasure_FullPitcher()
{
	if global.CurrentTile.x <> 9 && global.CurrentTile.y <> 23
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}