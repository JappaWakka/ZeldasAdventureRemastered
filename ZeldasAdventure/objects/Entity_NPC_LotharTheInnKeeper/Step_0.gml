
if IsPlayerOnSameTile() = true
{
	if global.CameraIsPanning = false
	{
		visible = true
		image_speed = d(ImageSpeed)
		if HasSpoken = false
		{
			if Item_FindIndex(Spells.Calm,1) = -1
			{
				global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_BeforeBuy
			}
			else
			{
				global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_AfterBuy
			}
			Audio_StopMusic()
			global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
			HasSpoken = true
		}
	}
			
	
	if global.CurrentDialogue_Asset != Dialog_None
	{
		if Obj_InventoryManager.Alpha = 0
		{
			if audio_is_paused(global.CurrentDialogue_ID) = true
			{
				audio_resume_sound(global.CurrentDialogue_ID)
			}
			var AudioPosition = audio_sound_get_track_position(global.CurrentDialogue_ID)
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_BeforeBuy
			{
				global.Subtitle = Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_BeforeBuy(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_AfterBuy
			{
				global.Subtitle = Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_AfterBuy(AudioPosition)
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
		if global.CurrentMusic_Name = "Silence"
		{
			global.SwitchTracks = true
		}
	}
}
else
{
	image_speed = 0
	image_index = 0
	visible = false
}
