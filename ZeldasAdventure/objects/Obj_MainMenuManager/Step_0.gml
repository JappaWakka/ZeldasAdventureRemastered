if PageIndex = Menu_Page.Main
{
	if IsQuiting = true
	{
		if global.FadeProgress = 1
		{
			game_end()
		}
	}
	else if HasPressedPlay = true
	{
		if global.FadeProgress = 1
		{			
			room_goto(Room_Overworld);
		}
	}
	else if HasPressedTutorial = true
	{
		if global.FadeProgress = 1
		{			
			room_goto(Room_Cutscene_Tutorial);
		}
	}
	else if IsFading == false
	{
		var CurrentGrid = Menu_Pages[PageIndex];
		var GridHeight = ds_grid_height(CurrentGrid);
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
			}
		}
		var OptionChangeX = input_check_pressed("right") - input_check_pressed("left");
		var OptionChangeY = input_check_pressed("down") - input_check_pressed("up");
		if OptionChangeX !=0
		{
			switch Menu_CurrentEntry[PageIndex]
			{
				case 0:
				case 1:
				case 2:
					break;
				case 3:
					if OptionChangeX = 1
					{
						Menu_CurrentEntry[PageIndex] = 7;
					}
					break;
				case 4:
					if OptionChangeX = 1
					{
						Menu_CurrentEntry[PageIndex] += OptionChangeX;
					}
					break;
				case 5:
					Menu_CurrentEntry[PageIndex] += OptionChangeX;
					break;
				case 6:
					if OptionChangeX = -1
					{
						Menu_CurrentEntry[PageIndex] += OptionChangeX;
					}
					break;
				case 7:
					if OptionChangeX = -1
					{
						Menu_CurrentEntry[PageIndex] = 3;
					}
					break;
			}
		}
		if OptionChangeY !=0
		{
			switch Menu_CurrentEntry[PageIndex]
			{
				case 0:
					if OptionChangeY = -1
					{
						Menu_CurrentEntry[PageIndex] = 5;
					}
					if OptionChangeY = 1
					{
						Menu_CurrentEntry[PageIndex] += OptionChangeY;
					}
					break;
				case 1:
				case 2:
				case 3:
					Menu_CurrentEntry[PageIndex] += OptionChangeY;
					break;
				case 4:
					if OptionChangeY = -1
					{
						Menu_CurrentEntry[PageIndex] = 3;
					}
					if OptionChangeY = 1
					{
						Menu_CurrentEntry[PageIndex] = 0;
					}
					break;
				case 5:
					if OptionChangeY = -1
					{
						Menu_CurrentEntry[PageIndex] = 7;
					}
					if OptionChangeY = 1
					{
						Menu_CurrentEntry[PageIndex] = 0;
					}
					break;
				case 6:
					if OptionChangeY = -1
					{
						Menu_CurrentEntry[PageIndex] = 7;
					}
					if OptionChangeY = 1
					{
						Menu_CurrentEntry[PageIndex] = 0;
					}
					break;
				case 7:
					if OptionChangeY = -1
					{
						Menu_CurrentEntry[PageIndex] = 2;
					}
					else
					{
						Menu_CurrentEntry[PageIndex] = 6;
					}
					break;
			}
			if (Menu_CurrentEntry[PageIndex] > GridHeight - 1)
			{
				Menu_CurrentEntry[PageIndex] = 0;
			}
			if (Menu_CurrentEntry[PageIndex] < 0)
			{
				Menu_CurrentEntry[PageIndex] = GridHeight - 1;
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
}
else if PageIndex = Menu_Page.NameInput //Name Input Menu
{
	if HasPressedPlay = true
	{
		if global.FadeProgress = 1
		{			
			room_goto(Room_Overworld);
		}
	}
	else if IsFading == false
	{
		if input_check_pressed("action2") = true
		{
			global.FadeSpeed = 16;
			global.FadeProgress = 0;
			audio_play_sound(Settings_Accept,1000,false)
			IsFading = true;
			NextPage = Menu_Page.Main;
		}
		var CurrentGrid = Menu_Pages[PageIndex];
	
		if input_check_pressed("action1") = true or input_check_pressed("accept")
		{
			//All entries in this menu are ScriptRunners
			script_execute(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],CurrentGrid[# 0, Menu_CurrentEntry[PageIndex]])
		}
		var OptionChangeX = input_check_pressed("right") - input_check_pressed("left");
		var OptionChangeY = input_check_pressed("down") - input_check_pressed("up");
		if OptionChangeX !=0
		{
			if Menu_CurrentEntry[PageIndex] != 27
			{
				switch Menu_CurrentEntry[PageIndex]
				{
					case 0:
					case 9:
					case 18:
						if OptionChangeX = -1
						{
							Menu_CurrentEntry[PageIndex] += 8;
						}
						else
						{
							Menu_CurrentEntry[PageIndex] += OptionChangeX;
						}
						break;
					case 8:
					case 17:
					case 26:
						if OptionChangeX = 1
						{
							Menu_CurrentEntry[PageIndex] -= 8;
						}
						else
						{
							Menu_CurrentEntry[PageIndex] += OptionChangeX;
						}
						break;
					default:
						Menu_CurrentEntry[PageIndex] += OptionChangeX;
						break;
				}
				
			}
		}
		if OptionChangeY !=0
		{
			if Menu_CurrentEntry[PageIndex] <= 8
			{
				if OptionChangeY = -1
				{
					Menu_CurrentEntry[PageIndex] = 27
				}
				else if OptionChangeY = 1
				{
					Menu_CurrentEntry[PageIndex] += 9
				}
			}
			else if Menu_CurrentEntry[PageIndex] = 27
			{
				if OptionChangeY = 1
				{
					Menu_CurrentEntry[PageIndex] = 0
				}
			}
			else if Menu_CurrentEntry[PageIndex] >= 18 and Menu_CurrentEntry[PageIndex] <= 26
			{
				
				if OptionChangeY = -1
				{
					Menu_CurrentEntry[PageIndex] -= 9
				}
				else if OptionChangeY = 1
				{
					Menu_CurrentEntry[PageIndex] -= 18
				}
			}
			else
			{
				if OptionChangeY = -1
				{
					Menu_CurrentEntry[PageIndex] -= 9
				}
				else if OptionChangeY = 1
				{
					Menu_CurrentEntry[PageIndex] += 9
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
}
else //SettingMenu
{
	if IsFading == false
	{
		var CurrentGrid = Menu_Pages[PageIndex];
		var GridHeight = ds_grid_height(CurrentGrid);
		if IsInputting == true
		{
			switch(CurrentGrid[# 1, Menu_CurrentEntry[PageIndex]])
			{
				case Menu_ElementType.Shift:
					var OptionChange = input_check_pressed("right") - input_check_pressed("left");
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
					var OptionChange = input_check("right") - input_check("left");
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
					var OptionChange = input_check_pressed("right") - input_check_pressed("left");
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
						input_binding_scan_start(
						function(new_binding)
						{
							var CurrentGrid = Menu_Pages[PageIndex];
							if ConfigDevice = 0
							{
								input_binding_set_safe(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],new_binding,,,"keyboard_and_mouse")
								if input_binding_get(CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]],,,"keyboard_and_mouse")  != new_binding
								{									
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
			
			var OptionChange = input_check_pressed("down") - input_check_pressed("up");
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
					case Menu_Page.Settings:
						if SavedSettings = false
						{
							Settings_Discard()
						}
						else
						{
							Settings_Update()
						}
						//Return to Main Menu
						global.FadeSpeed = 16;
						global.FadeProgress = 0;
						audio_play_sound(Settings_Accept,1000,false)
						IsFading = true;
						NextPage = Menu_Page.Main;
						break;
					case Menu_Page.Game:
					case Menu_Page.Audio:
					case Menu_Page.Controls:
						//Return to Settings Menu
						global.FadeSpeed = 16;
						global.FadeProgress = 0;
						audio_play_sound(Settings_Accept,1000,false)
						IsFading = true;
						NextPage = Menu_Page.Settings;
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
}