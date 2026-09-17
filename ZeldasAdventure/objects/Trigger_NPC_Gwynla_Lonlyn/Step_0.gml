if IsPlayerOnSameTile() = true
{
	if place_meeting(x,y,Entity_Player)
	{
		if global.FadeAlpha = 0 and global.CurrentDialogue_Asset = Dialog_None and HasTalked = false
		{
			if Register_Registered(Registers.Gwynla_YouLookTiredMyLady) = false
			{
				global.CurrentDialogue_Asset = Dialog_Verna_Gwynla_YouLookTiredMyLady
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Gwynla,global.CurrentDialogue_Asset,500,false)
				Register_Add(Registers.Gwynla_YouLookTiredMyLady)
				HasTalked = true
			}
			else if Item_FindIndex(Spells.Noise,1) <> -1
			{
				if Register_Registered(Registers.Lonlyn_Greetings) = false
				{
					global.CurrentDialogue_Asset = Dialog_Verna_Lonlyn_Greetings
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Lonlyn,global.CurrentDialogue_Asset,500,false)
					Register_Add(Registers.Lonlyn_Greetings)
					HasTalked = true
				}
				else if Register_Registered(Registers.Lonlyn_HasGivenMoney) = true and Register_Registered(Registers.Lonlyn_CannotHelpYou) = false and global.RemasteredMode = true
				{
					global.CurrentDialogue_Asset = Dialog_Verna_Lonlyn_CannotHelpYou
					global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Lonlyn,global.CurrentDialogue_Asset,500,false)
					Register_Add(Registers.Lonlyn_CannotHelpYou)
					HasTalked = true
				}
			}
		}
	}
	else
	{
		if Register_Registered(Registers.Gwynla_YouLookTiredMyLady) = true and instance_exists(Entity_NPC_Gwynla) = 0
		{
			HasTalked = false
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
			if global.CurrentDialogue_Asset = Dialog_Verna_Gwynla_YouLookTiredMyLady
			{
				global.Subtitle = Subtitle_Verna_Gwynla_YouLookTiredMyLady(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_Verna_Lonlyn_Greetings
			{
				global.Subtitle = Subtitle_Verna_Lonlyn_Greetings(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_Verna_Lonlyn_CannotHelpYou
			{
				global.Subtitle = Subtitle_Verna_Lonlyn_CannotHelpYou(AudioPosition)
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
		if Register_Registered(Registers.Gwynla_YouLookTiredMyLady) = true and Item_FindIndex(Spells.Noise,1) <> -1
		{
			if instance_exists(Entity_Pickup_Noise) = false
			{
				instance_create_layer(6776,2124,"Items_AboveForeground",Entity_Pickup_Noise)
			}
		}
		if Register_Registered(Registers.Lonlyn_Greetings) = true and Register_Registered(Registers.Lonlyn_HasGivenMoney) = false
		{
			AddRubies(25)
			Register_Add(Registers.Lonlyn_HasGivenMoney)
		}
		if Register_Registered(Registers.Lonlyn_CannotHelpYou) = true
		{
			instance_destroy()
		}
	}
}
else
{
	HasTalked = false
}