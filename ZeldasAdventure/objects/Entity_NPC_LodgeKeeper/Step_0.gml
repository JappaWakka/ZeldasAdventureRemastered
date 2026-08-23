///@description Path NPC Step Event (Movement)
if IsPlayerOnSameTile_EnemyOrNPC() = true && global.CameraIsFading = false
{
	if NPCState != NPCStates.StopPath
	{
		if place_meeting(x,y,Entity_Player)
		{
			if global.FadeAlpha = 0 and global.CurrentDialogue_Asset = Dialog_None and HasTalked = false
			{
				if Register_Registered(Registers.Lodgekeeper_BumbleberryTea) = false
				{
					global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_Lodgekeeper_BumbleberryTea
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false,x)
					Register_Add(Registers.Lodgekeeper_BumbleberryTea,true)
					HasTalked = true
				}
				else if Register_Registered(Registers.LodgeKeeper_CantTalkToYouNow) = false and global.RemasteredMode = true
				{
					global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_Lodgekeeper_CantTalkToYouNow
					global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false,x)
					Register_Add(Registers.LodgeKeeper_CantTalkToYouNow,true)
					HasTalked = true
				}
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
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_Lodgekeeper_BumbleberryTea
			{
				global.Subtitle = Subtitle_ForestOfTorian_WhiteSteedLodge_Lodgekeeper_BumbleberryTea(AudioPosition)
			}
			if global.CurrentDialogue_Asset = Dialog_ForestOfTorian_WhiteSteedLodge_Lodgekeeper_CantTalkToYouNow
			{
				global.Subtitle = Subtitle_ForestOfTorian_WhiteSteedLodge_Lodgekeeper_CantTalkToYouNow(AudioPosition)
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
	
	if CanContinue = true
	{
		var CoordinateIndex = floor(FrameIndex / 4)
		if CoordinateIndex > array_length(CurrentPath) - 1
		{
			FrameIndex = 0
			x = OriginX
			y = OriginY
			CoordinateIndex = floor(FrameIndex / 4)
		}
		speed = 0
		SpeedModifier = [1,1]
		if abs(CurrentPath[CoordinateIndex][0]) > 4
		{
			SpeedModifier[0] = abs(CurrentPath[CoordinateIndex][0]) / 4
		}
		if abs(CurrentPath[CoordinateIndex][1]) > 4
		{
			SpeedModifier[1] = abs(CurrentPath[CoordinateIndex][1]) / 4
		}
		if CoordinateIndex <= array_length(CurrentPath)-1
		{
			if CurrentPath[CoordinateIndex][0] != 0 or CurrentPath[CoordinateIndex][1] !=0
			{
				if x < CurrentCoordinates[0]
				{
					if x + SpeedModifier[0] > CurrentCoordinates[0]
					{
						x = CurrentCoordinates[0]
					}
					else
					{
						x += SpeedModifier[0]
					}
					
				}
				else if x > CurrentCoordinates[0]
				{
					if x - SpeedModifier[0] < CurrentCoordinates[0]
					{
						x = CurrentCoordinates[0]
					}
					else
					{
						x -= SpeedModifier[0]
					}
				}
				
				if y < CurrentCoordinates[1]
				{
					if y + SpeedModifier[1] > CurrentCoordinates[1]
					{
						y = CurrentCoordinates[1]
					}
					else
					{
						y += SpeedModifier[1]
					}
				}
				else if y > CurrentCoordinates[1]
				{
					if y - SpeedModifier[1] < CurrentCoordinates[1]
					{
						y = CurrentCoordinates[1]
					}
					else
					{
						y -= SpeedModifier[1]
					}
				}
			}
			//Increase Current Frame
			if NPCState != NPCStates.Wait and NPCState != NPCStates.StopPath
			{
				FrameIndex +=1
			}
		}
	}
}
else
{	
	HasTalked = false
}