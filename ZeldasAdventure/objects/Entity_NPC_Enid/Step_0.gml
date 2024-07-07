
if IsPlayerOnSameTile() = true
{
	
	if Register_Registered("Enid_Intro") = false
	{
		global.CurrentDialogue_Asset = Dialog_ForestOfOgham_14_Enid_ComeClose
		global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
		Register_Add("Enid_Intro",true)
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
			if global.CurrentDialogue_Asset = Dialog_ForestOfOgham_14_Enid_ComeClose
			{
				global.Subtitle = Subtitle_ForestOfOgham_14_Enid_ComeClose(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfOgham_14_Enid_TrustNoOneWithHair
			{
				global.Subtitle = Subtitle_ForestOfOgham_14_Enid_TrustNoOneWithHair(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfOgham_14_Enid_GoAway
			{
				global.Subtitle = Subtitle_ForestOfOgham_14_Enid_GoAway(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfOgham_14_Enid_TooClever
			{
				global.Subtitle = Subtitle_ForestOfOgham_14_Enid_TooClever(AudioPosition)
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
else
{
	if Register_Registered("Enid_Done") = true
	{
		instance_destroy()
	}
}
