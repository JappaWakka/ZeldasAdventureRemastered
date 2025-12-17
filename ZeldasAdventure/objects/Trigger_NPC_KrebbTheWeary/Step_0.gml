if IsPlayerOnSameTile() = true
{
	if Register_Registered("KrebbTheWeary") = false and Item_FindIndex(Spells.Dagger,1) = -1
	{
		if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player)
		{
			global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_KrebbTheWeary_Dagger
			Audio_StopMusic()
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_KrebbTheWeary, global.CurrentDialogue_Asset,500,false)
			Register_Add("KrebbTheWeary",true)
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
			if global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_KrebbTheWeary_Dagger
			{
				global.Subtitle = Subtitle_PlainOfAndor_MobilinsHeadInn_KrebbTheWeary(AudioPosition)
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
		if Register_Registered("KrebbTheWeary") = true
		{
			if instance_exists(Entity_Pickup_Dagger) = false and Item_FindIndex(Spells.Dagger,1) = -1
			{
				instance_create_layer(4064,5192,"Items_BelowForeground",Entity_Pickup_Dagger)
			}
		}
		if global.CurrentMusic_Name = "Silence"
		{
			global.SwitchTracks = true
		}
	}
}
else if instance_exists(Entity_Pickup_Dagger) = false and Item_FindIndex(Spells.Dagger,1) = -1
{
	Register_Remove("KrebbTheWeary",true)
}