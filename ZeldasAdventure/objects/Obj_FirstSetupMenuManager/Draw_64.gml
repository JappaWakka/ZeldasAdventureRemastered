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
	y : (ViewHeight / 2) - (((GridHeight - 1) / 2) * SeparationDistance.y) + 8
}
if PageIndex = SetupMenu_Page.RemasteredModeSetup
{
	StartPosition.x = (ViewWidth / 2) - 13
	StartPosition.y = ViewHeight - (3.75 * SeparationDistance.y)
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
	
	draw_text_color(LeftTextX, LeftTextY, FirstSetupMenu_SettingsText(PageIndex,ElementIndexLeft),DrawColor,DrawColor,DrawColor,DrawColor,1);
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
	
	var CurrentValue = CurrentGrid[# 3, ElementIndexRight];
	var CurrentArray = CurrentGrid[# 4, ElementIndexRight];
	
	switch(CurrentGrid[# 1, ElementIndexRight])
		{
			case Menu_ElementType.Shift:
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
				draw_text_color(RightTextX, RightTextY, LeftShift + FirstSetupMenu_SettingsText(PageIndex,ElementIndexRight,CurrentValue) + RightShift,DrawColor,DrawColor,DrawColor,DrawColor,1);
				break;
			
			case Menu_ElementType.Slider:
				var LineLength = 64;
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
				draw_text_color(RightTextX, RightTextY,FirstSetupMenu_SettingsText(PageIndex,ElementIndexRight,0),DrawColor0,DrawColor0,DrawColor0,DrawColor0,DrawAlpha0);
				draw_text_color(RightTextX + string_width(FirstSetupMenu_SettingsText(PageIndex,ElementIndexRight,0)) + SeparationDistance.x, RightTextY,FirstSetupMenu_SettingsText(PageIndex,ElementIndexRight,1),DrawColor1,DrawColor1,DrawColor1,DrawColor1,DrawAlpha1);
				break;
			
		}
		ElementIndexRight++;
}
//Draw Title
var TitleText = FirstSetupMenu_TitleText(PageIndex)
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var TitleFont = Font_Settings

draw_set_font(TitleFont);
var TitleY = StartPosition.y - (SeparationDistance.y * 2)
if PageIndex = SetupMenu_Page.RemasteredModeSetup
{
	TitleY = 30
}
draw_text_color(ViewWidth / 2, TitleY, string(TitleText),c_black,c_black,c_black,c_black,1);

var DrawColor = make_color_rgb(141,48,18);
var ExplanationFont = Font_Subtitles_1x
var ExplanationText = FirstSetupMenu_RemasteredModeText(PageIndex)
switch global.WindowScale
{
	case 1:
		ExplanationFont = Font_Subtitles_1x
		break;
	case 2:
		ExplanationFont = Font_Subtitles_2x
		break;
	case 3:
		ExplanationFont = Font_Subtitles_3x
		break;
	case 4:
		ExplanationFont = Font_Subtitles_4x
		break;
	case 5:
		ExplanationFont = Font_Subtitles_5x
		break;
	case 6:
		ExplanationFont = Font_Subtitles_6x
		break;
	default:
		ExplanationFont = Font_Subtitles_6x
		break;			
}
var ExplanationY = 30 + 16
var AspectY = 1
if global.AspectRatio != 0
{
	AspectY = ViewHeight / (ViewHeight + global.AspectRatio)
	ExplanationY += 8
}
draw_set_font(ExplanationFont);
draw_text_ext_transformed_color(ViewWidth / 2, ExplanationY, string(ExplanationText), 12 * global.WindowScale, ViewWidth * global.WindowScale * 0.73, 1 / global.WindowScale, AspectY / global.WindowScale, 0, DrawColor, DrawColor, DrawColor, DrawColor, 1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
