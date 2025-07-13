if IsPlayerOnSameTile() = true
{
	if Register_Registered("TalkingToadstool") = false and global.FadeAlpha = 0
	{
		if global.CurrentDialogue_Asset = Dialog_None
		{
			global.CurrentDialogue_Asset = Dialog_ForestOfFindo_03_Toadstool_SlowAndStupidMobilins
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_TalkingToadstool,global.CurrentDialogue_Asset,500,false)
			Register_Add("TalkingToadstool")
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
			if global.CurrentDialogue_Asset = Dialog_ForestOfFindo_03_Toadstool_SlowAndStupidMobilins
			{
				global.Subtitle = Subtitle_ForestOfFindo_03_Toadstool_SlowAndStupidMobilins(AudioPosition)
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
		if Register_Registered("TalkingToadstool") = true and global.FadeAlpha = 0
		{
			instance_destroy()
		}
	}
}