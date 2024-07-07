if IsPlayerOnSameTile() = true
{
	if Register_Registered("WomanAtTable") = false
	{
		if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
		{
			global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_WomanAtTable
			Audio_StopMusic()
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_WomanAtTable, global.CurrentDialogue_Asset,500,false)
			Register_Add("WomanAtTable")
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
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_WomanAtTable
			{
				global.Subtitle = Subtitle_PlainOfAndor_MobilinsHeadInn_WomanAtTable(AudioPosition)
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
	else
	{
		if global.CurrentMusic_Name = "Silence"
		{
			global.SwitchTracks = true
		}
	}
}