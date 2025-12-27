var MenuBackground
if PageIndex = 0 //Main Menu
{
	//Setup some variables
	var CurrentGrid = Menu_Pages[PageIndex];
	var SaveNameSeparationDistance = 22;
	var CursorPositions =
	[
		[89,62],	//0 - Save A
		[89,84],	//1 - Save B
		[89,106],	//2 - Save C
		[134,163],	//3 - Play
		[134,196],	//4 - Delete
		[237,196],	//5 - Tutorial
		[340,196],	//6 - Settings
		[333,163]	//7 - Exit
	]
	//Draw Background
	MenuBackground = Sprite_MainMenu_Background
	draw_sprite(MenuBackground,0,0,0);
	
	//Draw Save File Names
	var SaveIndex = 0
	var SaveNameY
	repeat(3)
	{
		SaveNameY = 55 + (SaveIndex * SaveNameSeparationDistance);
		draw_set_font(Font_Menu)
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		var GradientColor0 = make_color_rgb(255,247,107)
		var GradientColor1 = make_color_rgb(198,123,16)
		var PlayerName
		if global.SavePlayerNames[SaveIndex] != ""
		{
			PlayerName = global.SavePlayerNames[SaveIndex]
		}
		else
		{
			PlayerName = UI_MainMenu_Text(8)
		}
		
		draw_text_color(99, SaveNameY,PlayerName,GradientColor0,GradientColor0,GradientColor1,GradientColor1,1);
				
		//Draw Selected Save Icon
		if (SaveIndex == global.CurrentSaveGame)
		{
			draw_sprite(
				Sprite_MainMenu_SelectedSave,
				0,
				85, //x
				58 + (SaveIndex * SaveNameSeparationDistance), //y
				);
		}
		
		//Draw Cursor
		if (SaveIndex == Menu_CurrentEntry[PageIndex])
		{
			
			draw_sprite(
				Sprite_Cursor,
				0,
				CursorPositions[SaveIndex][0], //x
				CursorPositions[SaveIndex][1] //y
				);
		}
		
		SaveIndex++;
	}
	if Menu_CurrentEntry[PageIndex] >= 3
	{
		//Draw Highlighted Buttons
		switch Menu_CurrentEntry[PageIndex]
		{
			case 3:
				draw_sprite(
				Sprite_MainMenu_Button_Play,
				0,
				46, //x
				139, //y
				);
				break;
				
			case 4:
				draw_sprite(
				Sprite_MainMenu_Button_Delete,
				0,
				47, //x
				174, //y
				);
				break;
				
			case 5:
				draw_sprite(
				Sprite_MainMenu_Button_Settings,
				0,
				149, //x
				174, //y
				);
				break;
				
			case 6:
				draw_sprite(
				Sprite_MainMenu_Button_Tutorial,
				0,
				252, //x
				174, //y
				);
				break;
				
			case 7:
				draw_sprite(
				Sprite_MainMenu_Button_Exit,
				0,
				258, //x
				130, //y
				);
				break;
		}
		
		
	}
	//Draw Button Text
		draw_set_color(make_color_rgb(55,23,16))
		draw_set_halign(fa_center)
		
			//Regular Font
			draw_set_font(Font_Menu)
			
				//Play
				draw_text(90,146,UI_MainMenu_Text(3))
				
				//Delete
				draw_text(90,180,UI_MainMenu_Text(4))
				
				//Settings
				if string_lower(Localize.Meta.LanguageNameNative) = "french"
				{
					draw_set_font(Font_Menu_Smaller)
					draw_text(194,181,UI_MainMenu_Text(5))
					draw_set_font(Font_Menu)
				}
				else
				{
					draw_text(194,180,UI_MainMenu_Text(5))
				}
				
				//Tutorial
				draw_text(296,180,UI_MainMenu_Text(6))
				
			//Fancy Font
				//Exit
				if string_lower(Localize.Meta.LanguageNameNative) = "french"
				{
					draw_set_font(Font_Fancy_Small)
					draw_text(298,139,UI_MainMenu_Text(7))
					draw_text(298,139,UI_MainMenu_Text(7)) // Make it extra thick
				}
				else
				{
					draw_set_font(Font_Fancy)
					draw_text(298,138,UI_MainMenu_Text(7))
					draw_text(298,138,UI_MainMenu_Text(7)) // Make it extra thick
				}
		
		//Reset Font Properties
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		
		if Menu_CurrentEntry[PageIndex] >= 3
		{
			//Draw Cursor
			draw_sprite(
				Sprite_Cursor,
				0,
				CursorPositions[Menu_CurrentEntry[PageIndex]][0], //x
				CursorPositions[Menu_CurrentEntry[PageIndex]][1] //y
				);
		}
}
else if PageIndex = 5 //Name Input Menu
{
	//Setup some variables
	var CurrentGrid = Menu_Pages[PageIndex];
	var CharButtonsDistance = 
	{
		x: 28,
		y: 25
	}
	var CurrentIndex = 0
	var CurrentColumn = 0
	var CurrentRow = 0
	
	//Draw Background
	MenuBackground = Sprite_NameEntryMenu_Background
	draw_sprite(MenuBackground,0,0,0);
	
	//Draw Active Key Buttons
	repeat(27)
	{
		if CurrentIndex = Menu_CurrentEntry[PageIndex]
		{
			draw_sprite(
				Sprite_NameEntryMenu_Button_Keys,
				CurrentIndex,
				67 + CurrentColumn * CharButtonsDistance.x, //x
				127 + CurrentRow * CharButtonsDistance.y, //y
				)
			//Draw Cursor
			draw_sprite(
				Sprite_Cursor,
				0,
				67 + CurrentColumn * CharButtonsDistance.x + 24, //x
				127 + CurrentRow * CharButtonsDistance.y + 16, //y
				);
		}
		CurrentColumn++
		if CurrentColumn > 8
		{
			CurrentRow += 1
			CurrentColumn = 0
		}		
		CurrentIndex++
	}
	//Draw Active Done Button
	if Menu_CurrentEntry[PageIndex] = 27
	{
		draw_sprite(
				Sprite_NameEntryMenu_Button_Done,
				0,
				274, //x
				41, //y
				);
		
		//Draw Cursor
		draw_sprite(
			Sprite_Cursor,
			0,
			329, //x
			75, //y
			);
	}
	
	//Draw Name Input
		draw_set_font(Font_Menu)
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		var GradientColor0 = make_color_rgb(255,247,107)
		var GradientColor1 = make_color_rgb(198,123,16)
		draw_text_color(88,92,InputName,GradientColor0,GradientColor0,GradientColor1,GradientColor1,1);
		
		CurrentCharPositionObject.x = 92 + string_width(Obj_MainMenuManager.InputName)
	
	//Draw Instruction Title
		draw_set_halign(fa_center)
		draw_set_color(c_black)
		draw_set_font(Font_Regular)
		
		draw_text(180,54,UI_NameEntryMenu_Text(0))
	
	//Draw Done Button Text
		draw_set_font(Font_Fancy)
		draw_set_color(make_color_rgb(55,23,16))
		draw_text(314,50,UI_NameEntryMenu_Text(1))
		draw_text(314,50,UI_NameEntryMenu_Text(1)) // Make it extra thick
	
	//Reset Font Properties
		draw_set_color(c_white)
		draw_set_halign(fa_left)
	
}
else //SettingsMenu
{
	var CurrentGrid = Menu_Pages[PageIndex];
	var GridHeight = ds_grid_height(CurrentGrid);
	
	var SeparationDistance =
	{
		x : 6, // Distance between Dividing Line and Elements
		y : 16  // Distance between each Element
	}
	
	var StartPosition = 
	{
		x : (ViewWidth / 2),
		y : (ViewHeight / 2) - (((GridHeight - 1) / 2) * SeparationDistance.y)
	}
	
	//Draw Background
	MenuBackground = Sprite_SettingsMenu_Background
	draw_sprite(MenuBackground,0,0,0);
	
	//Draw Elements on Left Side
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_set_font(Font_Settings)
	
	var ElementIndexLeft = 0;
	var LeftTextX = StartPosition.x - SeparationDistance.x;
	var LeftTextY
	
	repeat(GridHeight)
	{
		LeftTextY = StartPosition.y + (ElementIndexLeft * SeparationDistance.y);
		var DrawColor = c_black;
		
		if (ElementIndexLeft == Menu_CurrentEntry[PageIndex])
		{
			DrawColor = make_color_rgb(141,48,18);
		}
		
		draw_text_color(LeftTextX, LeftTextY, UI_SettingsMenu_Text(PageIndex,ElementIndexLeft),DrawColor,DrawColor,DrawColor,DrawColor,1);
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
					
					if IsInputting == true and ElementIndexRight == Menu_CurrentEntry[PageIndex]
					{
						DrawColor = make_color_rgb(141,48,18);
					}
					else
					{
						DrawColor = c_black;
					}
					draw_text_color(RightTextX, RightTextY, LeftShift + UI_SettingsMenu_Text(PageIndex,ElementIndexRight,CurrentValue) + RightShift,DrawColor,DrawColor,DrawColor,DrawColor,1);
					break;
				
				case Menu_ElementType.Slider:
					var LineLength = 64;
					var CurrentValue = CurrentGrid[# 3, ElementIndexRight];
					var CurrentArray = CurrentGrid[# 4, ElementIndexRight];
					var CirclePosition = ((CurrentValue - CurrentArray[0]) / (CurrentArray[1] - CurrentArray[0]))
					
					DrawColor = c_black;
					draw_line_width(RightTextX, RightTextY, RightTextX + LineLength, RightTextY, 2);
					
					if IsInputting == true and ElementIndexRight == Menu_CurrentEntry[PageIndex]
					{
						DrawColor = make_color_rgb(141,48,18);
					}
					else
					{
						DrawColor = c_black;
					}
					draw_circle_color(RightTextX + (CirclePosition * LineLength), RightTextY, 4, DrawColor, DrawColor, false);
					draw_text_color(RightTextX + (LineLength * 1.2), RightTextY, string(floor(CirclePosition * 100)) + "%", DrawColor, DrawColor, DrawColor, DrawColor, 1);
				
					break;
				case Menu_ElementType.Toggle:
					if IsInputting == true and ElementIndexRight == Menu_CurrentEntry[PageIndex]
					{
						DrawColor = make_color_rgb(141,48,18);
					}
					else
					{
						DrawColor = c_black;
					}
					var DrawColor0 = DrawColor;
					var DrawColor1 = c_black;
					var DrawAlpha0 = 1;
					var DrawAlpha1 = 1;
					var CurrentValue = CurrentGrid[# 3, ElementIndexRight];
					var CurrentArray = CurrentGrid[# 4, ElementIndexRight];
					
					if CurrentValue == 0
					{
						DrawColor0 = DrawColor;
						DrawColor1 = c_black;
						DrawAlpha0 = 1
						DrawAlpha1 = 0.5
					}
					else
					{
						DrawColor0 = c_black;
						DrawColor1 = DrawColor;
						DrawAlpha0 = 0.5
						DrawAlpha1 = 1
					}
					draw_text_color(RightTextX, RightTextY,UI_SettingsMenu_Text(PageIndex,ElementIndexRight,0),DrawColor0,DrawColor0,DrawColor0,DrawColor0,DrawAlpha0);
					draw_text_color(RightTextX + string_width(UI_SettingsMenu_Text(PageIndex,ElementIndexRight,0)) + SeparationDistance.x, RightTextY,UI_SettingsMenu_Text(PageIndex,ElementIndexRight,1),DrawColor1,DrawColor1,DrawColor1,DrawColor1,DrawAlpha1);
					break;
				case Menu_ElementType.Input:
					var BindingName = CurrentGrid[# 2, ElementIndexRight]
					var CurrentBinding = input_binding_get(BindingName,,,"keyboard_and_mouse");
										
					if ConfigDevice = 1
					{
						CurrentBinding = input_binding_get(BindingName,,,"gamepad");
					}
					
					var StringValue = input_binding_get_name(CurrentBinding);
					
					if ConfigDevice = 0
					{
						switch input_binding_get_name(CurrentBinding)
						{
							case "escape":
								StringValue =  UI_SettingsMenu_Text(4,16)
								break;
							case "enter":
								StringValue =  UI_SettingsMenu_Text(4,16)
								break;
							case "arrow up":
								StringValue = string_concat(UI_SettingsMenu_Text(4,18)," ",UI_SettingsMenu_Text(4,11))
								break;
							case "arrow down":
								StringValue = string_concat(UI_SettingsMenu_Text(4,18)," ",UI_SettingsMenu_Text(4,12))
								break;
							case "arrow left":
								StringValue = string_concat(UI_SettingsMenu_Text(4,18)," ",UI_SettingsMenu_Text(4,13))
								break;
							case "arrow right":
								StringValue = string_concat(UI_SettingsMenu_Text(4,18)," ",UI_SettingsMenu_Text(4,14))
								break;
						}
					}
					
					if ConfigDevice = 1
					{
						switch input_binding_get_name(CurrentBinding)
						{
							case "gamepad face south":
								StringValue = "A"
								break;
							case "gamepad face east":
								StringValue = "B"
								break;
							case "gamepad face west":
								StringValue = "X"
								break;
							case "gamepad face north":
								StringValue = "Y"
								break;
							case "gamepad shoulder l":
								StringValue = "LB"
								break;
							case "gamepad shoulder r":
								StringValue = "RB"
								break;
							case "gamepad trigger l":
								StringValue = "LT"
								break;
							case "gamepad trigger r":
								StringValue = "RT"
								break;
							case "gamepad select":
								StringValue = "select"
								break;
							case "gamepad start":
								StringValue = "start"
								break;
							case "gamepad dpad left":
								StringValue = string_concat("d-pad ",UI_SettingsMenu_Text(4,11))
								break;
							case "gamepad dpad right":
								StringValue = string_concat("d-pad ",UI_SettingsMenu_Text(4,12))
								break;
							case "gamepad dpad up":
								StringValue = string_concat("d-pad ",UI_SettingsMenu_Text(4,13))
								break;
							case "gamepad dpad down":
								StringValue = string_concat("d-pad ",UI_SettingsMenu_Text(4,14))
								break;
							case "gamepad thumbstick l left":
								StringValue = string_concat("stick l ",UI_SettingsMenu_Text(4,11))
								break;
							case "gamepad thumbstick l right":
								StringValue = string_concat("stick l ",UI_SettingsMenu_Text(4,12))
								break;
							case "gamepad thumbstick l up":
								StringValue = string_concat("stick l ",UI_SettingsMenu_Text(4,13))
								break;
							case "gamepad thumbstick l down":
								StringValue = string_concat("stick l ",UI_SettingsMenu_Text(4,14))
								break;
							case "gamepad thumbstick l click":
								StringValue = string_concat("stick ",UI_SettingsMenu_Text(4,15)," ",UI_SettingsMenu_Text(4,11))
								break;
							case "gamepad thumbstick r left":
								StringValue = string_concat("stick r ",UI_SettingsMenu_Text(4,11))
								break;
							case "gamepad thumbstick r right":
								StringValue = string_concat("stick r ",UI_SettingsMenu_Text(4,12))
								break;
							case "gamepad thumbstick r up":
								StringValue = string_concat("stick r ",UI_SettingsMenu_Text(4,13))
								break;
							case "gamepad thumbstick r down":
								StringValue = string_concat("stick r ",UI_SettingsMenu_Text(4,14))
								break;
							case "gamepad thumbstick r click":
								StringValue = string_concat("stick ",UI_SettingsMenu_Text(4,15)," ",UI_SettingsMenu_Text(4,12))
								break;								
						}
					}
					
					if IsInputting == true and ElementIndexRight == Menu_CurrentEntry[PageIndex]
					{
						DrawColor = make_color_rgb(141,48,18);
					}
					else
					{
						DrawColor = c_black;
					}
					draw_text_color(RightTextX, RightTextY, StringValue,DrawColor,DrawColor,DrawColor,DrawColor,1);
					
					break;
			}
			ElementIndexRight++;
	}
	//Draw Tooltip
	var TooltipText = UI_SettingsMenu_Tooltip(PageIndex,Menu_CurrentEntry[PageIndex])
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	
	DrawColor = make_color_rgb(141,48,18);
	var ToolTipFont = Font_Subtitles_1x
	switch global.WindowScale
	{
		case 1:
			ToolTipFont = Font_Subtitles_1x
			break;
		case 2:
			ToolTipFont = Font_Subtitles_2x
			break;
		case 3:
			ToolTipFont = Font_Subtitles_3x
			break;
		case 4:
			ToolTipFont = Font_Subtitles_4x
			break;
		case 5:
			ToolTipFont = Font_Subtitles_5x
			break;
		case 6:
			ToolTipFont = Font_Subtitles_6x
			break;
		default:
			ToolTipFont = Font_Subtitles_6x
			break;			
	}
	
	draw_set_font(ToolTipFont);
	var CropWidthPlus = 0
	var TextYPosMin = 0
	if string_lower(Localize.Meta.LanguageNameNative) = "french"
	{
		CropWidthPlus = ViewWidth * global.WindowScale * 0.08
	}
	draw_text_ext_transformed_color(ViewWidth / 2, ViewHeight - 32, string(TooltipText), 12 * global.WindowScale, ViewWidth * global.WindowScale * 0.65 + CropWidthPlus, 1 / global.WindowScale, 1 / global.WindowScale, 0, DrawColor, DrawColor, DrawColor, DrawColor, 1);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);	
}
