if PageIndex = 0 //Main Menu
{
}
else //SettingMenu
{
	if IsFading == false
	{
		var CurrentGrid = Menu_Pages[PageIndex];
		var GridHeight = ds_grid_height(CurrentGrid);
		var OptionChange = input_check_pressed("Down") - input_check_pressed("Up");
		
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
		if input_check_pressed("Action") = true or input_check_pressed("Special") = true
		{
			switch(CurrentGrid[# 1, Menu_CurrentEntry[PageIndex]])
			{
				case Menu_ElementType.PageTransfer:
					global.FadeSpeed = 16;
					global.FadeProgress = 0;
					IsFading = true;
					NextPage = CurrentGrid[# 2, Menu_CurrentEntry[PageIndex]]
					break;
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