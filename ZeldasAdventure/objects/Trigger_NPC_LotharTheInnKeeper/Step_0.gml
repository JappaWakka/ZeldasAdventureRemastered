if IsPlayerOnSameTile() = true
{
	if Item_FindIndex(Spells.Calm,1) = -1 and Register_Registered("LotharTheInnKeeper_OfferSpellOfCalm") = false
	{
		if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
		{
			global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_OfferCalmSpell
			Audio_StopMusic()
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_LotharTheInnKeeper,global.CurrentDialogue_Asset,500,false)
			Register_Add("LotharTheInnKeeper_OfferSpellOfCalm",true)
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
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_OfferCalmSpell
			{
				global.Subtitle = Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_OfferCalmSpell(AudioPosition)
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
else
{
	instance_destroy()
}