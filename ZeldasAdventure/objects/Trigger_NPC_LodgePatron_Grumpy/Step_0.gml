if IsPlayerOnSameTile() = true
{
	if place_meeting(x,y,Entity_Player) and global.RemasteredMode = true
	{
		if global.FadeAlpha = 0 and global.CurrentDialogue_Asset = Dialog_None and HasTalked = false
		{
			var ChooseDialogue = 0
			if Register_Registered(Registers.GrumpyPatron_TeaInPeace) = false and
			Register_Registered(Registers.GrumpyPatron_QuietMountainStream) = false
			{
				ChooseDialogue = choose(0,1)
			}
			else if Register_Registered(Registers.GrumpyPatron_TeaInPeace) = true and
			Register_Registered(Registers.GrumpyPatron_QuietMountainStream) = false
			{
				ChooseDialogue = 1
			}
			
			if ChooseDialogue = 0
			{
				global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_GrumpyPatron_TeaInPeace
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_LodgePatron_Grumpy,global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.GrumpyPatron_TeaInPeace,true)
				HasTalked = true
				
			}
			else
			{
				global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_GrumpyPatron_QuietMountainStream
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_LodgePatron_Grumpy,global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.GrumpyPatron_QuietMountainStream,true)
				HasTalked = true
			}
		}
	}
	else
	{
		HasTalked = false
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
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_GrumpyPatron_TeaInPeace
			{
				global.Subtitle = Subtitle_ForestOfTorian_WhiteSteedLodge_GrumpyPatron_TeaInPeace(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_GrumpyPatron_QuietMountainStream
			{
				global.Subtitle = Subtitle_ForestOfTorian_WhiteSteedLodge_GrumpyPatron_QuietMountainStream(AudioPosition)
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
	HasTalked = false
}