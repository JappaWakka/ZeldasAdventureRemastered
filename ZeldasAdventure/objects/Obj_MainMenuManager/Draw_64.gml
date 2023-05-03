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
					var CurrentValue = CurrentGrid[# 3, ElementIndexRight];
					var StringValue = ""
					
					if ConfigDevice = 1
					{
						CurrentValue = CurrentGrid[# 4, ElementIndexRight]
					}
											
					switch ConfigDevice
					{
						case 0: //Keyboard
							switch CurrentValue
							{
								case vk_up:			StringValue	=	"Up Key"; break;
								case vk_down:		StringValue	=	"Down Key"; break;
								case vk_left:		StringValue	=	"Left Key"; break;
								case vk_right:		StringValue	=	"Right Key"; break;
								case vk_shift:		StringValue	=	"Shift Key"; break;
								case vk_control:	StringValue	=	"Ctrl Key"; break;
								case vk_space:		StringValue	=	"Space Key"; break;
								case vk_alt:		StringValue	=	"Alt Key"; break;
								case vk_escape:		StringValue	=	"Escape Key"; break;
								case vk_tab:		StringValue	=	"Tab Key"; break;
								case vk_enter:		StringValue	=	"Enter Key"; break;
								case vk_numpad0:	StringValue	=	"Numpad 0"; break;
								case vk_numpad1:	StringValue	=	"Numpad 1"; break;
								case vk_numpad2:	StringValue	=	"Numpad 2"; break;
								case vk_numpad3:	StringValue	=	"Numpad 3"; break;
								case vk_numpad4:	StringValue	=	"Numpad 4"; break;
								case vk_numpad5:	StringValue	=	"Numpad 5"; break;
								case vk_numpad6:	StringValue	=	"Numpad 6"; break;
								case vk_numpad7:	StringValue	=	"Numpad 7"; break;
								case vk_numpad8:	StringValue	=	"Numpad 8"; break;
								case vk_numpad9:	StringValue	=	"Numpad 9"; break;
								default:			StringValue	=	chr(CurrentValue); break;
							}								
							break;
						case 1: //Gamepad
							switch CurrentValue
							{
								case gp_padl:			StringValue = "D-Pad Left"; break;
								case gp_padr:			StringValue = "D-Pad Right"; break;
								case gp_padu:			StringValue = "D-Pad Up"; break;
								case gp_padd:			StringValue = "D-Pad Down"; break;
								case gp_face1:			StringValue = "A Button"; break;
								case gp_face2:			StringValue = "B Button"; break;
								case gp_face3:			StringValue = "X Button"; break;
								case gp_face4:			StringValue = "Y Button"; break;
								case gp_start:			StringValue = "Start Button"; break;
								case gp_select:			StringValue = "Select Button"; break;
								case gp_shoulderl:		StringValue = "Left Trigger"; break;
								case gp_shoulderr:		StringValue = "Right Trigger"; break;
								case gp_shoulderlb:		StringValue = "Left Button"; break;
								case gp_shoulderrb:		StringValue = "Right Button"; break;
							}
							break;
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
