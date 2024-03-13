//Setup some variables
var CursorXPosition = 308
var CursorYStart = 69
var CursorYSepararation = 51
if Alpha = 255
{
	//Draw Background
		draw_sprite_ext(Sprite_ExitMenu_Background,0,0,0,1,1,0,c_white,Alpha);
	
	//Draw Highlighted Buttons
		switch CurrentEntry
		{
			case 0:
				draw_sprite(
				Sprite_ExitMenu_Button_SaveAndQuit,
				0,
				68, //x
				46, //y
				);
				break;
				
			case 1:
				draw_sprite(
				Sprite_ExitMenu_Button_QuitWithoutSave,
				0,
				68, //x
				100, //y
				);
				break;
				
			case 2:
				draw_sprite(
				Sprite_ExitMenu_Button_ReturnToGame,
				0,
				68, //x
				154, //y
				);
				break;
				
		}
		
	//Draw Button Text
		draw_set_color(make_color_rgb(55,23,16))
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(Font_Regular)
		
		//Play
		draw_text(192,69,UI_ExitMenu_Text(0))
		
		//Delete
		draw_text(192,121,UI_ExitMenu_Text(1))
		
		//Settings
		draw_text(192,173,UI_ExitMenu_Text(2))
		
		//Reset Font Properties
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		
	//Draw Cursor
		draw_sprite(
			Sprite_Cursor,
			0,
			CursorXPosition, //x
			CursorYStart + CursorYSepararation * CurrentEntry //y
			);
}