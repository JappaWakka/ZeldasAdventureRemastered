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
		x : 16, // Distance between Dividing Line and Elements
		y : 32  // Distance between each Element
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
	
	var ElementIndex = 0;
	var LeftTextX = StartPosition.x - SeparationDistance.x;
	var LeftTextY
	
	repeat(GridHeight)
	{
		LeftTextY = StartPosition.y + (ElementIndex * SeparationDistance.y);
		var TextColor = c_black
		
		draw_text_color(LeftTextX,LeftTextY, CurrentGrid[# 0, ElementIndex],TextColor,TextColor,TextColor,TextColor,1);
		
		ElementIndex++;
	}
	
	//Draw Dividing Line
	draw_line(StartPosition.x, StartPosition.y - SeparationDistance.y, StartPosition.x, LeftTextY + SeparationDistance.y)
	
	//Draw Elements on Right Side

}
