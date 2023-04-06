var MainMenuBackground
if PageIndex = 0 //Main Menu
{
	//Draw Background
	MainMenuBackground = Sprite_MainMenu_Background
	draw_sprite(MainMenuBackground,0,0,0);
}
else //SettingMenu
{
	var CurrentGrid = Menu_Pages[PageIndex];
	var GridHeight = ds_grid_height(CurrentGrid);
	
	var SeparationDistance =
	{
		x : 8, // Distance between Dividing Line and Elements
		y : 18  // Distance between each Element
	}
	
	var StartPosition = 
	{
		x : (ViewWidth / 2),
		y : (ViewHeight / 2) - (((GridHeight - 1) / 2) * SeparationDistance.y)
	}
	
	//Draw Background
	MainMenuBackground = Sprite_SettingsMenu_Background
	draw_sprite(MainMenuBackground,0,0,0);
	
	//Draw Elements on Left Side
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	
	var ElementIndexLeft = 0;
	var LeftTextX = StartPosition.x - SeparationDistance.x;
	var LeftTextY
	
	repeat(GridHeight)
	{
		LeftTextY = StartPosition.y + (ElementIndexLeft * SeparationDistance.y);
		var DrawColor = c_black;
		draw_set_font(Font_Settings)
		if (ElementIndexLeft == Menu_CurrentEntry[PageIndex])
		{
			DrawColor = make_color_rgb(141,48,18);
		}
		
		draw_text_color(LeftTextX, LeftTextY, CurrentGrid[# 0, ElementIndexLeft],DrawColor,DrawColor,DrawColor,DrawColor,1);
		
		ElementIndexLeft++;
	}
	
	//Draw Dividing Line
	draw_set_color(c_black);
	draw_line_width(StartPosition.x, StartPosition.y - (SeparationDistance.y / 2), StartPosition.x, LeftTextY + (SeparationDistance.y / 2), 2);
	
	//Draw Elements on Right Side
	draw_set_halign(fa_left);
	
	var ElementIndexRight = 0;
	var RightTextX = StartPosition.x + SeparationDistance.x;
	var RightTextY
	
	repeat(GridHeight)
	{
		var DrawColor = c_black;
		RightTextY = StartPosition.y + (ElementIndexRight * SeparationDistance.y);
		
		switch(CurrentGrid[# 1, ElementIndexRight])
			{
				case Menu_ElementType.Shift:
					var CurrentValue = CurrentGrid[# 3, ElementIndexRight];
					var CurrentArray = CurrentGrid[# 4, ElementIndexRight];
					var LeftShift = "<< ";
					var RightShift = " >>";
					
					if CurrentValue == 0
					{
						LeftShift = "";
					}
					
					if CurrentValue == array_length(CurrentGrid[# 4, ElementIndexRight]) - 1
					{
						RightShift = "";
					}
					DrawColor = c_black;
					draw_text_color(RightTextX, RightTextY, LeftShift + CurrentArray[CurrentValue] + RightShift,DrawColor,DrawColor,DrawColor,DrawColor,1);
					break;
				
				case Menu_ElementType.Slider:
					var LineLength = 64;
					var CurrentValue = CurrentGrid[# 3, ElementIndexRight];
					var CurrentArray = CurrentGrid[# 4, ElementIndexRight];
					var CirclePosition = ((CurrentValue - CurrentArray[0]) / (CurrentArray[1] - CurrentArray[0]))
					
					DrawColor = c_black;
					draw_line_width(RightTextX, RightTextY, RightTextX + LineLength, RightTextY, 2);
					draw_circle_color(RightTextX + (CirclePosition * LineLength), RightTextY, 4, DrawColor, DrawColor, false);
					draw_text_color(RightTextX + (LineLength * 1.2), RightTextY, string(floor(CirclePosition * 100)) + "%", DrawColor, DrawColor, DrawColor, DrawColor, 1);
				
					break;
				case Menu_ElementType.
			}
			ElementIndexRight++;
	}
	
	draw_set_valign(fa_top);
}
