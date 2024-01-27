var MainMenuBackground
if PageIndex = 0 //Main Menu
{
	//Setup some variables
	var CurrentGrid = Menu_Pages[PageIndex];
	var SaveNameSeparationDistance = 22;
	var CursorPositions =
	[
		[92,62],	//0 - Save A
		[92,84],	//1 - Save B
		[92,106],	//2 - Save C
		[134,163],	//3 - Play
		[134,196],	//4 - Delete
		[237,196],	//5 - Tutorial
		[340,196],	//6 - Settings
		[333,163]	//7 - Exit
	]
	//Draw Background
	MainMenuBackground = Sprite_MainMenu_Background
	draw_sprite(MainMenuBackground,0,0,0);
	
	//Draw Save File Names
	var SaveIndex = 0
	var SaveNameY
	repeat(3)
	{
		SaveNameY = 55 + (SaveIndex * SaveNameSeparationDistance);
		var DrawColor = c_white;
		draw_set_font(Font_SaveGameFont())
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
				
		draw_text_color(108, SaveNameY, global.SavePlayerNames[SaveIndex],DrawColor,DrawColor,DrawColor,DrawColor,1);
		
		//Draw Selected Save Icon
		if (SaveIndex == global.CurrentSaveGame)
		{
			draw_sprite(
				Sprite_MainMenu_SelectedSave,
				0,
				89, //x
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
				CursorPositions[SaveIndex][1], //y
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
				Sprite_MainMenu_Button_Play_Hover,
				0,
				46, //x
				139, //y
				);
				break;
				
			case 4:
				draw_sprite(
				Sprite_MainMenu_Button_Delete_Hover,
				0,
				47, //x
				174, //y
				);
				break;
				
			case 5:
				draw_sprite(
				Sprite_MainMenu_Button_Settings_Hover,
				0,
				149, //x
				174, //y
				);
				break;
				
			case 6:
				draw_sprite(
				Sprite_MainMenu_Button_Tutorial_Hover,
				0,
				252, //x
				174, //y
				);
				break;
				
			case 7:
				draw_sprite(
				Sprite_MainMenu_Button_Exit_Hover,
				0,
				258, //x
				130, //y
				);
				break;
		}
		
		//Draw Cursor
		draw_sprite(
			Sprite_Cursor,
			0,
			CursorPositions[Menu_CurrentEntry[PageIndex]][0], //x
			CursorPositions[Menu_CurrentEntry[PageIndex]][1], //y
			);
	}
	//Draw Button Text
		draw_set_color(make_color_rgb(55,23,16))
		draw_set_halign(fa_center)
		
			//Regular Font
			draw_set_font(Font_Menu)
			
				//Play
				draw_text(90,146,UI_MainMenu_Main_Text(3))
				
				//Delete
				draw_text(90,180,UI_MainMenu_Main_Text(4))
				
				//Settings
				draw_text(194,180,UI_MainMenu_Main_Text(5))
				
				//Tutorial
				draw_text(296,180,UI_MainMenu_Main_Text(6))
				
			//Fancy Font
				//Exit
				draw_set_font(Font_Fancy)
				draw_text(298,138,UI_MainMenu_Main_Text(7))
				draw_text(298,138,UI_MainMenu_Main_Text(7)) // Make it extra thick
		
		//Reset Font Properties
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		
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
		draw_set_font(Font_Menu)
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
					
					if IsInputting == true and ElementIndexRight == Menu_CurrentEntry[PageIndex]
					{
						DrawColor = make_color_rgb(141,48,18);
					}
					else
					{
						DrawColor = c_black;
					}
					draw_text_color(RightTextX, RightTextY, LeftShift + CurrentArray[CurrentValue] + RightShift,DrawColor,DrawColor,DrawColor,DrawColor,1);
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
					draw_text_color(RightTextX, RightTextY, CurrentArray[0],DrawColor0,DrawColor0,DrawColor0,DrawColor0,DrawAlpha0);
					draw_text_color(RightTextX + string_width(CurrentArray[0]) + SeparationDistance.x, RightTextY, CurrentArray[1],DrawColor1,DrawColor1,DrawColor1,DrawColor1,DrawAlpha1);
					break;
				case Menu_ElementType.Input:
					var BindingName = CurrentGrid[# 2, ElementIndexRight]
					var CurrentBinding = input_binding_get(BindingName,,,"keyboard_and_mouse");
										
					if ConfigDevice = 1
					{
						CurrentBinding = input_binding_get(BindingName,,,"gamepad");
					}
					
					var StringValue = input_binding_get_name(CurrentBinding);
					
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
								StringValue = "d-pad left"
								break;
							case "gamepad dpad right":
								StringValue = "d-pad right"
								break;
							case "gamepad dpad up":
								StringValue = "d-pad up"
								break;
							case "gamepad dpad down":
								StringValue = "d-pad down"
								break;
							case "gamepad thumbstick l left":
								StringValue = "stick l left"
								break;
							case "gamepad thumbstick l right":
								StringValue = "stick l right"
								break;
							case "gamepad thumbstick l up":
								StringValue = "stick l up"
								break;
							case "gamepad thumbstick l down":
								StringValue = "stick l down"
								break;
							case "gamepad thumbstick l click":
								StringValue = "stick l click"
								break;
							case "gamepad thumbstick r left":
								StringValue = "stick r left"
								break;
							case "gamepad thumbstick r right":
								StringValue = "stick r right"
								break;
							case "gamepad thumbstick r up":
								StringValue = "stick r up"
								break;
							case "gamepad thumbstick r down":
								StringValue = "stick r down"
								break;
							case "gamepad thumbstick r click":
								StringValue = "stick r click"
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
					draw_text_color(RightTextX, RightTextY, StringValue ,DrawColor,DrawColor,DrawColor,DrawColor,1);
					
					break;
			}
			ElementIndexRight++;
	}
	
	draw_set_valign(fa_top);
}
