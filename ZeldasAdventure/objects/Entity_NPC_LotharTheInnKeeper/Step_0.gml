
if IsPlayerOnSameTile() = true and global.CameraIsFading = false
{
	if Register_Registered("LotharTheInnKeeper_Intro") = false
	{
		global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_Intro
		Audio_StopMusic()
		global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
		Register_Add("LotharTheInnKeeper_Intro",true)
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
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_Intro
			{
				global.Subtitle = Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_Intro(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_PurchaseCalmSpell
			{
				global.Subtitle = Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_PurchaseCalmSpell(AudioPosition)
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
		if global.CameraIsFading = false
		{
			if global.CurrentMusic_Name = "Silence"
			{
				global.SwitchTracks = true
			}
		}
	}
}
