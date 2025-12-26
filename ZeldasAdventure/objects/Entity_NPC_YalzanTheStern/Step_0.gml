if Register_Registered("DonoraGateFeePaid") = false
{	
	if IsPlayerOnSameTile_EnemyOrNPC() = true && global.CameraIsFading = false
	{
		if HasTalked = false
		{
			//Temporarily Block Progress// global.CurrentDialogue_Asset = Dialog_PlainOfDonora_10_YalzanTheStern_Toll10Rubies
			//Temporarily Block Progress// global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false,x)
			//Temporarily Block Progress// Register_Add("DonoraGateAttacked")
		}
		var GateFee = 10
		if global.RemasteredMode = true
		{
			if Register_Registered("DonoraGateAttacked")
			{
				GateFee = 20
			}
		}
		if global.RemasteredMode = false and Entity_Player.IsAttacking = false
		{
			if input_check_pressed("action1") = true or input_check_pressed("action2") = true
			{
				if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasures.Rubies and global.CurrentRubies >= GateFee
				{
					//Temporarily Block Progress// RemoveRubies(GateFee);
					//Temporarily Block Progress// Register_Add("DonoraGateFeePaid",true)
				}
				
			}
		}
		if global.RemasteredMode = true and Entity_Player.IsAttacking = false
		{
			if input_check_pressed("action2") = true
			{
				if global.CurrentRubies >= GateFee
				{
					//Temporarily Block Progress// RemoveRubies(GateFee);
					//Temporarily Block Progress// Register_Add("DonoraGateFeePaid",true)
				}
			}
		}
	}
}
else
{
	instance_deactivate_object(Collision_PlainOfDonoraGate)
	instance_deactivate_object(Entity_Enemy_FloorSpikes_PlainOfDonoraGate)
}
if IsPlayerOnSameTile_EnemyOrNPC()
{
	if global.CurrentDialogue_Asset != Dialog_None
	{
		if IsMenuVisible() = false
		{
			//Temporarily Block Progress//  if audio_is_paused(global.CurrentDialogue_ID) = true
			//Temporarily Block Progress//  {
			//Temporarily Block Progress//  	audio_resume_sound(global.CurrentDialogue_ID)
			//Temporarily Block Progress//  }
			//Temporarily Block Progress//  var AudioPosition = audio_sound_get_track_position(global.CurrentDialogue_ID)
			//Temporarily Block Progress//  if global.CurrentDialogue_Asset = Dialog_PlainOfDonora_10_YalzanTheStern_Toll10Rubies
			//Temporarily Block Progress//  {
			//Temporarily Block Progress//  	global.Subtitle = Subtitle_PlainOfDonora_10_YalzanTheStern_Toll10Rubies(AudioPosition)
			//Temporarily Block Progress//  }
			//Temporarily Block Progress//  if global.CurrentDialogue_Asset = Dialog_PlainOfDonora_10_YalzanTheStern_Toll20Rubies
			//Temporarily Block Progress//  {
			//Temporarily Block Progress//  	global.Subtitle = Subtitle_PlainOfDonora_10_YalzanTheStern_Toll20Rubies(AudioPosition)
			//Temporarily Block Progress//  }
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
	Register_Remove("DonoraGateFeePaid")
	instance_activate_object(Collision_PlainOfDonoraGate)
	instance_activate_object(Entity_Enemy_FloorSpikes_PlainOfDonoraGate)
}