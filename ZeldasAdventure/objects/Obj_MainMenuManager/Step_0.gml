if PageIndex = 0 //Main Menu
{
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
					}
					if input_check_pressed("action") = true or input_check_pressed("special") = true
					{
						IsInputting = false
					}
					break;
				case Menu_ElementType.Slider:
					var OptionChange = input_check("right") - input_check("left");
					var CurrentArray = CurrentGrid[# 4, Menu_CurrentEntry[PageIndex]]
					if OptionChange !=0
					{
						audio_play_sound(Settings_ChangeValue,1000,false)
						CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] += OptionChange * 0.01;
						CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] = clamp(CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]], CurrentArray[0], CurrentArray[1])
					}
					if input_check_pressed("action") = true or input_check_pressed("special") = true
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
					}
					if input_check_pressed("action") = true or input_check_pressed("special") = true
					{
						IsInputting = false
					}
					break;
				case Menu_ElementType.Input:
					var LastKey = keyboard_lastkey;
					var LastButton = gamepad_last_input(0);
					if ConfigDevice = 0
					{
						if keyboard_check_pressed(LastKey) = true
						{
							if LastKey != CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]]
							{
								audio_play_sound(Settings_ChangeValue,1000,false)
							}
							CurrentGrid[# 3, Menu_CurrentEntry[PageIndex]] = LastKey
						}
					}
					else
					{
						if gamepad_button_check_pressed(0, LastButton) = true
						{
							if LastButton != CurrentGrid[# 4, Menu_CurrentEntry[PageIndex]]
							{
								audio_play_sound(Settings_ChangeValue,1000,false)
							}
							CurrentGrid[# 4, Menu_CurrentEntry[PageIndex]] = LastButton
						}
					}
					break;
			}
		}
		else
		{
			var OptionChange = input_check_pressed("down") - input_check_pressed("up");
			if OptionChange !=0
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
			if input_check_pressed("action") = true or input_check_pressed("special") = true
			{
				switch(CurrentGrid[# 1, Menu_CurrentEntry[PageIndex]])
				{
					case Menu_ElementType.ScriptRunner:
						break;
					case Menu_ElementType.PageTransfer:
						global.FadeSpeed = 16;
						global.FadeProgress = 0;
						audio_play_sound(Settings_PageTransfer,1000,false)
						IsFading = true;
						NextPage = CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]]
						break;
					case Menu_ElementType.Shift:
					case Menu_ElementType.Slider:
					case Menu_ElementType.Toggle:
					case Menu_ElementType.Input:
						audio_play_sound(Settings_ChangeValue,1000,false)
						IsInputting = true;
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
			global.FadeSpeed = 8;
		}
	}
}