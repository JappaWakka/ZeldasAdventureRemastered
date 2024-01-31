if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
{
	if global.CameraIsPanning = false
	{
		if Register_Registered("WomanAtTableTalk") = false
		{
			if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
			{
				global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_WomanAtTable
				Audio_StopMusic()
				global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
				Register_Add("WomanAtTableTalk")
			}
			
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