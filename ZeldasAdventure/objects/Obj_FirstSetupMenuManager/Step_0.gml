if PageIndex = SetupMenu_Page.RemasteredModeSetup
{
	if HasConfirmed = true
	{
		if global.FadeProgress = 1
		{
			room_goto(Room_Cutscene_Logos)
		}
	}
}
if IsFading == false
{
	var CurrentGrid = Menu_Pages[PageIndex];
	var GridHeight = ds_grid_height(CurrentGrid);
	var OptionChange = input_check_pressed("right") - input_check_pressed("left");
	if IsInputting == true
	{
		switch(CurrentGrid[# 1, Menu_CurrentEntry[PageIndex]])
		{
			case Menu_ElementType.Shift:
			
				if OptionChange = 0
				{
					OptionChange = input_check_pressed("joyright") - input_check_pressed("joyleft");
				}
				
				if OptionChange !=0
				{
					audio_play_sound(Settings_ChangeValue,1000,false)
					CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] += OptionChange;
					CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] = clamp(CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]], 0, array_length(CurrentGrid[# 4, Menu_CurrentEntry[PageIndex]])-1)
					script_execute(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]])
				}
				if input_check_pressed("action1") = true or input_check_pressed("action2") = true or input_check_pressed("accept")
				{
					IsInputting = false
				}
				break;
			case Menu_ElementType.Slider:
				OptionChange = input_check("right") - input_check("left");
				if OptionChange = 0
				{
					OptionChange = input_check("joyright") - input_check("joyleft");
				}
				var CurrentArray = CurrentGrid[# 4, Menu_CurrentEntry[PageIndex]]
				
				if OptionChange !=0
				{
					CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] += OptionChange * 0.01;
					CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] = clamp(CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]], CurrentArray[0], CurrentArray[1])
					script_execute(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],CurrentGrid[# 5, Menu_CurrentEntry[PageIndex]], CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]])
					if FirstChangeDone = false
					{
						audio_play_sound(Settings_ChangeValue,1000,false)
						FirstChangeDone = true
					}
					run_alarm(ChangeValueAlarm)
				}
				else
				{
					if ChangeValueAlarm.time != ChangeValueAlarm.startTime
					{
						ChangeValueAlarm.restart();
						FirstChangeDone = false;
					}
				}
				if input_check_pressed("action1") = true or input_check_pressed("action2") = true or input_check_pressed("accept")
				{
					IsInputting = false
				}
				break;
			case Menu_ElementType.Toggle:
				OptionChange = input_check_pressed("right") - input_check_pressed("left");
				if OptionChange = 0
				{
					OptionChange = input_check_pressed("joyright") - input_check_pressed("joyleft");
				}
				if OptionChange !=0
				{
					audio_play_sound(Settings_ChangeValue,1000,false)
					CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] += OptionChange;
					CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] = clamp(CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]], 0, 1)
					script_execute(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]])
				}
				if input_check_pressed("action1") = true or input_check_pressed("action2") = true or input_check_pressed("accept")
				{
					IsInputting = false
				}
				break;
			case Menu_ElementType.Input:
				if input_binding_scan_in_progress() = false
				{
					if ConfigDevice = 1
					{
						input_binding_scan_params_set([gp_axislh,gp_axislv,gp_axisrh,gp_axisrv],[gp_face1,gp_face2,gp_face3,gp_face4,gp_shoulderl,gp_shoulderlb,gp_shoulderr,gp_shoulderrb,gp_select,gp_start,gp_stickl,gp_stickr,gp_padu,gp_padd,gp_padl,gp_padr],INPUT_GAMEPAD)
					}
					else
					{
						input_binding_scan_params_clear()
					}
					input_binding_scan_start(
					function(new_binding)
					{
						var CurrentGrid = Menu_Pages[PageIndex];
						if ConfigDevice = 0
						{
							if input_binding_get(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],,,"keyboard_and_mouse")  != new_binding
							{
								input_binding_set_safe(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],new_binding,,,"keyboard_and_mouse")
								
								audio_play_sound(Settings_ChangeValue,1000,false)
							}
						}
						else
						{
							if input_binding_get(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],,,"gamepad")  != new_binding
							{
								input_binding_set_safe(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],new_binding,,,"gamepad")
								
								audio_play_sound(Settings_ChangeValue,1000,false)									
							}
						}
						CanChangeControls = false
						alarm[0] = 5
						IsInputting = false
					}
					,function()
					{
						audio_play_sound(SFX_Use_Error,1000,false)
						CanChangeControls = false
						alarm[0] = 5
						IsInputting = false
						
					});
				}
				break;
		}
	}
	else
	{
		if ChangeValueAlarm.time != ChangeValueAlarm.startTime
		{
			ChangeValueAlarm.restart();
			FirstChangeDone = false;
		}
		
		OptionChange = input_check_pressed("down") - input_check_pressed("up");
		if OptionChange = 0
		{
			OptionChange = input_check_pressed("joydown") - input_check_pressed("joyup");
		}
		if OptionChange !=0 and CanChangeControls = true
		{
			Menu_CurrentEntry[PageIndex] += OptionChange;
			if (Menu_CurrentEntry[PageIndex] > GridHeight - 1)
			{
				Menu_CurrentEntry[PageIndex] = 0;
			}
			if (Menu_CurrentEntry[PageIndex] < 0)
			{
				Menu_CurrentEntry[PageIndex] = GridHeight - 1;
			}
		}
		if input_check_pressed("action1") = true or input_check_pressed("accept")
		{
			switch(CurrentGrid[# 1, Menu_CurrentEntry[PageIndex]])
			{
				case Menu_ElementType.ScriptRunner:
					audio_play_sound(Settings_Accept,1000,false)
					script_execute(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]])
					break;
				case Menu_ElementType.PageTransfer:
					global.FadeSpeed = 16;
					global.FadeProgress = 0;
					audio_play_sound(Settings_Accept,1000,false)
					IsFading = true;
					NextPage = CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]]
					break;
				case Menu_ElementType.Shift:
				case Menu_ElementType.Slider:
				case Menu_ElementType.Toggle:
					if IsInputting = false
					{
						IsInputting = true;
					}
					break;
				case Menu_ElementType.Input:
				if IsInputting = false and CanChangeControls = true
				{
					audio_play_sound(Settings_ChangeValue,1000,false)
					IsInputting = true;
					break;
				}
			}
		}
		if input_check_pressed("action2") = true
		{
			switch PageIndex
			{
				case SetupMenu_Page.RemasteredModeSetup:
					//Return to Settings
					global.FadeSpeed = 16;
					global.FadeProgress = 0;
					audio_play_sound(Settings_Accept,1000,false)
					IsFading = true;
					NextPage = SetupMenu_Page.SettingsSetup;
					break;
				case SetupMenu_Page.SettingsSetup:
					audio_play_sound(SFX_Use_Error,1000,false)
					break;
			}
		}
	}
}
else
{
	if NextPage != -1 && global.FadeProgress > 0
	{
		PageIndex = NextPage;
		IsFading = false;
		NextPage = -1;
		global.FadeSpeed = 12;
	}
}
