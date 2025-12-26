if IsPlayerOnSameTile() = true
{
	if global.FadeAlpha = 0 and Register_Registered("Farmhand_Dialogue") = false
	{
		if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
		{
			global.CurrentDialogue_Asset = Dialog_GreatWimbich_GhostFarmer_ShrineOfWater_Classic
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_GhostFarmhand,global.CurrentDialogue_Asset,500,false)
			Register_Add("Farmhand_Dialogue",true)
		}
	}
	
	
		
	if global.CurrentDialogue_Asset != Dialog_None
	{
		if IsMenuVisible() = false
		{
			if audio_is_paused(global.CurrentDialogue_ID) = true
			{
				audio_resume_sound(global.CurrentDialogue_ID)
			}
			var AudioPosition = audio_sound_get_track_position(global.CurrentDialogue_ID)
			if global.CurrentDialogue_Asset = Dialog_GreatWimbich_GhostFarmer_ShrineOfWater_Classic
			{
				global.Subtitle = Subtitle_GreatWimbich_GhostFarmer_ShrineOfWater_Classic(AudioPosition)
			}
		}
		else
		{
			if audio_is_paused(global.CurrentDialogue_ID) = false
			{
				audio_pause_sound(global.CurrentDialogue_ID)
			}
			global.Subtitle = ""
		}
	}
}