if IsPlayerOnSameTile() = true
{
	if place_meeting(x,y,Entity_Player) and global.RemasteredMode = true
	{
		if global.FadeAlpha = 0 and global.CurrentDialogue_Asset = Dialog_None and HasTalked = false
		{
			var ChooseDialogue = 0
			if Register_Registered(Registers.FriendlyPatron_RoughBunch) = false and
			Register_Registered(Registers.FriendlyPatron_YoungNoble) = false
			{
				ChooseDialogue = choose(0,1)
			}
			else if Register_Registered(Registers.FriendlyPatron_RoughBunch) = true and
			Register_Registered(Registers.FriendlyPatron_YoungNoble) = false
			{
				ChooseDialogue = 1
			}
			
			if ChooseDialogue = 0
			{
				global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_FriendlyPatron_RoughBunch
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_LodgePatron_Friendly,global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.FriendlyPatron_RoughBunch,true)
				HasTalked = true
				
			}
			else
			{
				global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_FriendlyPatron_YoungNoble
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_LodgePatron_Friendly,global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.FriendlyPatron_YoungNoble,true)
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
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_FriendlyPatron_RoughBunch
			{
				global.Subtitle = Subtitle_ForestOfTorian_WhiteSteedLodge_FriendlyPatron_RoughBunch(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_FriendlyPatron_YoungNoble
			{
				global.Subtitle = Subtitle_ForestOfTorian_WhiteSteedLodge_FriendlyPatron_YoungNoble(AudioPosition)
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